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
/// �ּ���
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
    /// ���� ������ ����
    /// </summary>
    public int Count
    {
        get
        {
            return nCurrentItemCount;
        }
    }

    /// <summary>
    /// ��带 �߰��Ѵ�.
    /// </summary>
    /// <param name="item">���</param>
    public void Add(T item)
    {
        item.HeapIndex = nCurrentItemCount;
        items[nCurrentItemCount] = item;

        SortUp(item);
        nCurrentItemCount++;
    }

    /// <summary>
    /// ��Ʈ ��� ����
    /// </summary>
    /// <returns>��Ʈ ���</returns>
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
    /// ��� ������Ʈ
    /// </summary>
    /// <param name="item">������Ʈ �Ǵ� ���</param>
    public void UpdateItem(T item)
    {
        SortUp(item);
    }

    /// <summary>
    /// ����� ���� �����ϴ��� Ȯ��
    /// </summary>
    /// <param name="item">���</param>
    /// <returns></returns>
    public bool Contains(T item)
    {
        return Equals(items[item.HeapIndex], item);
    }

    /// <summary>
    /// �ڽ� ��带 �θ� ����� ���� ���� ���Ľ�Ŵ
    /// </summary>
    /// <param name="item">�ڽ� ���</param>
    void SortUp(T item)
    {
        // �θ� ��� index
        int nParentIndex = (item.HeapIndex - 1) / 2;

        while (true)
        {
            T parentItem = items[nParentIndex];

            // �θ� ��庸�� ����� �۴ٸ� ��ü
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
    /// �ι� ��带 �ڽ� ���� ���� �Ʒ��� ���Ľ�Ŵ
    /// </summary>
    /// <param name="item">�θ� ���</param>
    void SortDown(T item)
    {
        while (true)
        {
            // �ڽ� ��� �ε���
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

                // �θ� ����� ����� �ڽ� ��庸�� ũ�ٸ� ��ü
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
    /// ��� ��ü
    /// </summary>
    /// <param name="itemA">��ü�� ���1</param>
    /// <param name="itemB">��ü�� ���2</param>
    void Swap(T itemA, T itemB)
    {
        items[itemA.HeapIndex] = itemB;
        items[itemB.HeapIndex] = itemA;

        int itemAIndex = itemA.HeapIndex;
        itemA.HeapIndex = itemB.HeapIndex;
        itemB.HeapIndex = itemAIndex;
    }
}