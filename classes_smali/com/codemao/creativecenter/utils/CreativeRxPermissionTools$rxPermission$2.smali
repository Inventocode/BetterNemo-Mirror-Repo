.class final Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$2;
.super Ljava/lang/Object;
.source "CreativeRxPermissionTools.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->rxPermission(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/creativecenter/bean/PermissionState;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $permission:Lcom/codemao/creativecenter/bean/PermissionState;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/bean/PermissionState;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$2;->$permission:Lcom/codemao/creativecenter/bean/PermissionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$2;->$permission:Lcom/codemao/creativecenter/bean/PermissionState;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/bean/PermissionState;->setNeedRationale(Z)V

    .line 66
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$2;->$permission:Lcom/codemao/creativecenter/bean/PermissionState;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$2;->apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
