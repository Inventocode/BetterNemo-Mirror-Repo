.class public final Lcom/codemao/nemo/biz/mainmine/MainMineVM;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "MainMineVM.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/codemao/nemo/biz/mainmine/MainMineRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createRepository()Lcom/codemao/nemo/biz/mainmine/MainMineRepository;
    .registers 2

    .line 7
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/MainMineRepository;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/MainMineRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/MainMineVM;->createRepository()Lcom/codemao/nemo/biz/mainmine/MainMineRepository;

    move-result-object v0

    return-object v0
.end method
