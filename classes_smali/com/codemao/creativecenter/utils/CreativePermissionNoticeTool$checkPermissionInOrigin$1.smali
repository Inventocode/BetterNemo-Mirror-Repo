.class final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionInOrigin(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $permissionCallBack:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;

.field final synthetic $permissions:[Ljava/lang/String;

.field final synthetic $type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;)V
    .registers 5

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;->$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;->$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;->$permissions:[Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;->$permissionCallBack:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .registers 6

    if-eqz p1, :cond_2d

    .line 92
    sget-object p1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;->$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;->$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;->$permissions:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1$1;-><init>(Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionInOrigin$1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2d
    return-void
.end method
