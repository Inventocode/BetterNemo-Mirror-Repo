.class public Lcn/codemao/android/account/bean/BindDevicePageDTO;
.super Ljava/lang/Object;
.source "BindDevicePageDTO.java"


# instance fields
.field private pageIndex:I

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcn/codemao/android/account/bean/BindDevicePageDTO;->pageIndex:I

    .line 14
    iput p2, p0, Lcn/codemao/android/account/bean/BindDevicePageDTO;->pageSize:I

    return-void
.end method


# virtual methods
.method public getPageIndex()I
    .registers 2

    .line 21
    iget v0, p0, Lcn/codemao/android/account/bean/BindDevicePageDTO;->pageIndex:I

    return v0
.end method

.method public getPageSize()I
    .registers 2

    .line 29
    iget v0, p0, Lcn/codemao/android/account/bean/BindDevicePageDTO;->pageSize:I

    return v0
.end method

.method public setPageIndex(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcn/codemao/android/account/bean/BindDevicePageDTO;->pageIndex:I

    return-void
.end method

.method public setPageSize(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcn/codemao/android/account/bean/BindDevicePageDTO;->pageSize:I

    return-void
.end method
