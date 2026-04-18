.class public Lcn/codemao/android/account/bean/BindDeviceListVO;
.super Ljava/lang/Object;
.source "BindDeviceListVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private currentDevice:Lcn/codemao/android/account/bean/BindDeviceVO;

.field private currentPage:I

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/BindDeviceVO;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentDevice()Lcn/codemao/android/account/bean/BindDeviceVO;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->currentDevice:Lcn/codemao/android/account/bean/BindDeviceVO;

    return-object v0
.end method

.method public getCurrentPage()I
    .registers 2

    .line 27
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->currentPage:I

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/BindDeviceVO;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method public getPageSize()I
    .registers 2

    .line 35
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->pageSize:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 43
    iget v0, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->total:I

    return v0
.end method

.method public setCurrentDevice(Lcn/codemao/android/account/bean/BindDeviceVO;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->currentDevice:Lcn/codemao/android/account/bean/BindDeviceVO;

    return-void
.end method

.method public setCurrentPage(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->currentPage:I

    return-void
.end method

.method public setDeviceList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/BindDeviceVO;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->deviceList:Ljava/util/List;

    return-void
.end method

.method public setPageSize(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->pageSize:I

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data{currentDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->currentDevice:Lcn/codemao/android/account/bean/BindDeviceVO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/BindDeviceListVO;->deviceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
