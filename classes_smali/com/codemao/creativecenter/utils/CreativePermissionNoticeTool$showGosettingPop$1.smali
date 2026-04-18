.class final Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showGosettingPop$1;
.super Ljava/lang/Object;
.source "CreativePermissionNoticeTool.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->showGosettingPop(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showGosettingPop$1;->$context:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showGosettingPop$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 196
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showGosettingPop$1;->$context:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool;->goSetting(Landroidx/fragment/app/FragmentActivity;)V

    .line 197
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$showGosettingPop$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
