using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IHeapItem<T> : IComparable<T>
{
    int HeapIndex
    {
        get;
        set;
    }
}

/// <summary>
/// 최소힙
/// </summary>
/// <typeparam name="T"></typeparam>
public class CHeap<T> where T : IHeapItem<T>
{
    T[] items;
    int nCurrentItemCount;

    public CHeap(int nMaxHeapSize)
    {
        items = new T[nMaxHeapSize];
    }

    /// <summary>
    /// 현재 노드들의 개수
    /// </summary>
    public int Count
    {
        get
        {
            return nCurrentItemCount;
        }
    }

    /// <summary>
    /// 노드를 추가한다.
    /// </summary>
    /// <param name="item">노드</param>
    public void Add(T item)
    {
        item.HeapIndex = nCurrentItemCount;
        items[nCurrentItemCount] = item;

        SortUp(item);
        nCurrentItemCount++;
    }

    /// <summary>
    /// 루트 노드 제거
    /// </summary>
    /// <returns>루트 노드</returns>
    public T RemoveFirst()
    {
        T firstItem = items[0];
        nCurrentItemCount--;

        items[0] = items[nCurrentItemCount];
        items[0].HeapIndex = 0;

        SortDown(items[0]);

        return firstItem;
    }

    /// <summary>
    /// 노드 업데이트
    /// </summary>
    /// <param name="item">업데이트 되는 노드</param>
    public void UpdateItem(T item)
    {
        SortUp(item);
    }

    /// <summary>
    /// 노드의 값이 존재하는지 확인
    /// </summary>
    /// <param name="item">노드</param>
    /// <returns></returns>
    public bool Contains(T item)
    {
        return Equals(items[item.HeapIndex], item);
    }

    /// <summary>
    /// 자식 노드를 부모 노드들과 비교해 위로 정렬시킴
    /// </summary>
    /// <param name="item">자식 노드</param>
    void SortUp(T item)
    {
        // 부모 노드 index
        int nParentIndex = (item.HeapIndex - 1) / 2;

        while (true)
        {
            T parentItem = items[nParentIndex];

            // 부모 노드보다 비용이 작다면 교체
            if (item.CompareTo(parentItem) > 0)
            {
                Swap(item, parentItem);
            }

            else
            {
                break;
            }

            nParentIndex = (item.HeapIndex - 1) / 2;
        }
    }

    /// <summary>
    /// 부무 노드를 자식 노드와 비교해 아래로 정렬시킴
    /// </summary>
    /// <param name="item">부모 노드</param>
    void SortDown(T item)
    {
        while (true)
        {
            // 자식 노드 인덱스
            int nChildIndexLeft = item.HeapIndex * 2 + 1;
            int nChildIndexRight = item.HeapIndex * 2 + 2;
            int nSwapIndex = 0;

            if (nChildIndexLeft < nCurrentItemCount)
            {
                nSwapIndex = nChildIndexLeft;

                if (nChildIndexRight < nCurrentItemCount)
                {
                    if (items[nChildIndexLeft].CompareTo(items[nChildIndexRight]) < 0)
                    {
                        nSwapIndex = nChildIndexRight;
                    }
                }

                // 부모 노드의 비용이 자식 노드보다 크다면 교체
                if (item.CompareTo(items[nSwapIndex]) < 0)
                {
                    Swap(item, items[nSwapIndex]);
                }

                else
                {
                    return;
                }
            }

            else
            {
                return;
            }
        }
    }

    /// <summary>
    /// 노드 교체
    /// </summary>
    /// <param name="itemA">교체할 노드1</param>
    /// <param name="itemB">교체할 노드2</param>
    void Swap(T itemA, T itemB)
    {
        items[itemA.HeapIndex] = itemB;
        items[itemB.HeapIndex] = itemA;

        int itemAIndex = itemA.HeapIndex;
        itemA.HeapIndex = itemB.HeapIndex;
        itemB.HeapIndex = itemAIndex;
    }
}