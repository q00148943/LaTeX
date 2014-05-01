class TDataNode
{
  public:
    TDataNode()
    {
        // initialization of data members

        ...
        
        pData = NULL;
    }
    
    virtual ~TDataNode()
    {
        // resource free
        
        ...
        
        if (NULL != pData)
        {
            delete pData;
        }
    }

  public:
    // declaration of member function

    // assignment operator newly added
    TDataNode& operator= (const TDataNode &dataNode)
    {
        if (this == &dataNode)
        {
            return *this;
        }

        // assignment of other data members
        
        ...

        if (NULL == pData)
        {
            pData = new DataType;
            // make sure memory is successfully allocated
        }

        // copy the content of the data member
        *pData = *(dataNode.pData);
    }

  private:
    // delcaraion of data members

    // data member newly added
    DataType *pData;
};

