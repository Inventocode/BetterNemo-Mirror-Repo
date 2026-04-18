.class Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;
.super Ljava/lang/Object;
.source "ISListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;


# direct methods
.method public static synthetic $r8$lambda$EgrY3kLb7tLUv1NgTkN1jUpBZ3o(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->lambda$onClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTuSmG_Ub9JZQA75iJbuQAyjz68(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->lambda$onClick$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmoniK3V0Aw5itb1fKXOlR8q7Fg(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->lambda$onClick$2()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Ljava/lang/String;)V
    .registers 6

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 201
    sget-object v0, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity;->Companion:Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$Companion;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    const/4 v2, 0x2

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->access$000(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object v3

    iget-boolean v3, v3, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->isLandscape:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/codemao/toolssdk/image_selector/ui/ISImageTransformActivity$Companion;->startActivityForResult(Landroid/app/Activity;ILjava/lang/String;Z)V

    goto :goto_20

    .line 203
    :cond_15
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 204
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->finish()V

    :goto_20
    return-void
.end method

.method private synthetic lambda$onClick$1()V
    .registers 6

    .line 197
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    const/16 v3, 0x800

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v1, v4}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->copyImgFromSrcPath(Landroid/content/Context;ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    new-instance v2, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$2()V
    .registers 4

    .line 209
    sget-object v0, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity;->Companion:Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/ui/ISPreviewActivity$Companion;->startActivity(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 194
    sget-object p1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 195
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->access$000(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    sget-object v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedSelectHighlightRect:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    if-ne p1, v0, :cond_1f

    .line 196
    new-instance p1, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;)V

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    goto :goto_4c

    .line 208
    :cond_1f
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->access$000(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    sget-object v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedCutoutImage:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    if-ne p1, v0, :cond_36

    .line 209
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    new-instance v0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4c

    .line 211
    :cond_36
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;->exit()V

    goto :goto_4c

    .line 214
    :cond_3c
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/ISListActivity$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/ISListActivity;

    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_minnum:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4c
    return-void
.end method
