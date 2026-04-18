.class public final Lcom/codemao/nemo/common/AppUpdateUtils;
.super Ljava/lang/Object;
.source "AppUpdateUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/common/AppUpdateUtils;


# direct methods
.method public static synthetic $r8$lambda$7o6hjLP5c0xaEl-eQjTNf9vwMvA(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/common/AppUpdateUtils;->showUpdateDialog$lambda$1(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kLLbIuJjcusbbfwZey-qtvVlMv8(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/common/AppUpdateUtils;->showUpdateDialog$lambda$0(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/common/AppUpdateUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/common/AppUpdateUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/common/AppUpdateUtils;->INSTANCE:Lcom/codemao/nemo/common/AppUpdateUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final showUpdateDialog$lambda$0(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 2

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->update2()V

    return-void
.end method

.method private static final showUpdateDialog$lambda$1(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Landroid/view/View;)V
    .registers 2

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final showUpdateDialog(Ljava/lang/String;)V
    .registers 4

    .line 10
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "这次算了"

    .line 11
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "火速更新"

    .line 12
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    .line 13
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/codemao/nemo/common/AppUpdateUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/common/AppUpdateUtils$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 19
    new-instance v0, Lcom/codemao/nemo/common/AppUpdateUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/common/AppUpdateUtils$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 20
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
