.class public final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;->apply(Lcom/codemao/creativecenter/bean/PermissionState;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 144
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2$1;->this$0:Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;

    iget-object v2, v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$context:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$checkPermissionWithRxpermission$2;->$type:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->showGosettingPop(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
