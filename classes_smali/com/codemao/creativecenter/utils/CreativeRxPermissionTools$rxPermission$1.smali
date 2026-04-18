.class final Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;
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
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $permission:Lcom/codemao/creativecenter/bean/PermissionState;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/bean/PermissionState;Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;->$permission:Lcom/codemao/creativecenter/bean/PermissionState;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "aBoolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;->$permission:Lcom/codemao/creativecenter/bean/PermissionState;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/bean/PermissionState;->setGranted(Z)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_29

    .line 60
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;->$permission:Lcom/codemao/creativecenter/bean/PermissionState;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/PermissionState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 62
    :cond_29
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;->apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
