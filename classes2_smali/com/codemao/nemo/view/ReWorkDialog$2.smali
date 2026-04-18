.class Lcom/codemao/nemo/view/ReWorkDialog$2;
.super Ljava/lang/Object;
.source "ReWorkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ReWorkDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/ReWorkDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ReWorkDialog;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 137
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {v1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$100(Lcom/codemao/nemo/view/ReWorkDialog;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    const-string v0, "NEMO"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string v0, "作品详情页-点击学习代码按钮"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    sget-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz p1, :cond_3e

    .line 139
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$200(Lcom/codemao/nemo/view/ReWorkDialog;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "当前有作品在下载中，无法下载该作品，请稍后再试"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 143
    :cond_3e
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$300(Lcom/codemao/nemo/view/ReWorkDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5d

    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$300(Lcom/codemao/nemo/view/ReWorkDialog;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {v0}, Lcom/codemao/nemo/view/ReWorkDialog;->access$200(Lcom/codemao/nemo/view/ReWorkDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/BcmHelper;->showDownloadAppDialog(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5d

    return-void

    .line 146
    :cond_5d
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    iget-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvGoToWork:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$200(Lcom/codemao/nemo/view/ReWorkDialog;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f010016

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    iget-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->ivRework01:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$200(Lcom/codemao/nemo/view/ReWorkDialog;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f010013

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    iget-object v0, p1, Lcom/codemao/nemo/view/ReWorkDialog;->tvTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$200(Lcom/codemao/nemo/view/ReWorkDialog;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f01004e

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$000(Lcom/codemao/nemo/view/ReWorkDialog;)Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;

    move-result-object p1

    if-eqz p1, :cond_a4

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/view/ReWorkDialog$2;->this$0:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-static {p1}, Lcom/codemao/nemo/view/ReWorkDialog;->access$000(Lcom/codemao/nemo/view/ReWorkDialog;)Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;->studyCode()V

    :cond_a4
    return-void
.end method
