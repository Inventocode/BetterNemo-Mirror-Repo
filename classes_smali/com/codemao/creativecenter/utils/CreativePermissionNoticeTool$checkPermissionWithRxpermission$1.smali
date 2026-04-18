.class final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;->$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;->$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;->$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;->$permissions:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 125
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_2e

    .line 127
    :cond_24
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;->$context:Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1$1;

    invoke-direct {v1, p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2e
    return-void
.end method
