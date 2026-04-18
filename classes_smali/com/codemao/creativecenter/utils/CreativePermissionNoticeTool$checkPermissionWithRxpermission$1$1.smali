.class public final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$1$1;->$emitter:Lio/reactivex/ObservableEmitter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
