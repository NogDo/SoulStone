using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CPathRequestManager : MonoBehaviour
{
    struct PathRequest
    {
        public Vector3 pathStart;
        public Vector3 pathEnd;
        public Action<Vector3[], bool> callback;

        public PathRequest(Vector3 start, Vector3 end, Action<Vector3[], bool> callback)
        {
            this.pathStart = start;
            this.pathEnd = end;
            this.callback = callback;
        }
    }

    #region 정적 변수
    static CPathRequestManager instance;
    #endregion

    #region private 변수
    Queue<PathRequest> pathRequestQueue = new Queue<PathRequest>();
    PathRequest currentPathRequest;

    CPathFinding pathFinding;

    bool isProcessingPath;
    #endregion

    void Awake()
    {
        instance = this;
        pathFinding = GetComponent<CPathFinding>();
    }

    public static void RequestPath(Vector3 pathStart, Vector3 pathEnd, Action<Vector3[], bool> callback)
    {
        PathRequest newRequest = new PathRequest(pathStart, pathEnd, callback);

        instance.pathRequestQueue.Enqueue(newRequest);
        instance.TryProcessNext();
    }

    void TryProcessNext()
    {
        if (!isProcessingPath && pathRequestQueue.Count > 0)
        {
            currentPathRequest = pathRequestQueue.Dequeue();

            isProcessingPath = true;

            pathFinding.StartFindPath(currentPathRequest.pathStart, currentPathRequest.pathEnd);
        }
    }

    public void FinishedProcessingPath(Vector3[] path, bool success)
    {
        currentPathRequest.callback(path, success);
        isProcessingPath = false;

        TryProcessNext();
    }
}
