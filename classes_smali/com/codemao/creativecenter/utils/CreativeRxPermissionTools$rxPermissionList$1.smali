.class final Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermissionList$1;
.super Ljava/lang/Object;
.source "CreativeRxPermissionTools.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->rxPermissionList(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)Lio/reactivex/Observable;
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


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermissionList$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
            ">;"
        }
    .end annotation

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermissionList$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->rxPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermissionList$1;->apply(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
