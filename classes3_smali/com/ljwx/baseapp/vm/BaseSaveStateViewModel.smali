.class public abstract Lcom/ljwx/baseapp/vm/BaseSaveStateViewModel;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "BaseSaveStateViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/ljwx/baseapp/vm/model/BaseDataRepository<",
        "*>;>",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .registers 3

    const-string v0, "savedStateHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    const-string v0, "example"

    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
