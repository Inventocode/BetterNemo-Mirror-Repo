.class final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->showNoticePop(Landroid/content/Context;Ljava/lang/String;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

.field final synthetic $resultHandler:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$1;->$resultHandler:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 179
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 180
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showNoticePop$1;->$resultHandler:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;->onResult(Z)V

    return-void
.end method
