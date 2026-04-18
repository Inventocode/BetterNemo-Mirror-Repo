.class public abstract Lcom/codemao/nemo/common/CustomDataRepository;
.super Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
.source "CustomDataRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Server:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ljwx/baseapp/vm/model/BaseDataRepository<",
        "TServer;>;"
    }
.end annotation


# instance fields
.field private final pageDataSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;-><init>()V

    const/16 v0, 0xf

    .line 25
    iput v0, p0, Lcom/codemao/nemo/common/CustomDataRepository;->pageDataSize:I

    return-void
.end method


# virtual methods
.method public getPageDataSize()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/codemao/nemo/common/CustomDataRepository;->pageDataSize:I

    return v0
.end method
