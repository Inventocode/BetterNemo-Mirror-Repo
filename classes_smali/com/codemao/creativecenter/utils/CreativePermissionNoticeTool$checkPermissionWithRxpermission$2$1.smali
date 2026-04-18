.class final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->apply(Ljava/lang/Integer;)Lio/reactivex/Observable;
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
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/codemao/creativecenter/bean/PermissionState;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 142
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$context:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1$1;-><init>(Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    :cond_1d
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, 0x1

    goto :goto_2e

    :cond_25
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale()Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 p1, 0x3

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x2

    :goto_2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    check-cast p1, Lcom/codemao/creativecenter/bean/PermissionState;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;->apply(Lcom/codemao/creativecenter/bean/PermissionState;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
