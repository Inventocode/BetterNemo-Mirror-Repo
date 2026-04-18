.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ThemeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->getThemeInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/SubjectInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onNetError()V
    .registers 1

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/SubjectInfo;)V
    .registers 6

    if-eqz p1, :cond_39

    .line 302
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$702(Lcom/codemao/nemo/fragment/ThemeDetailFragment;Lcom/codemao/nemo/bean/SubjectInfo;)Lcom/codemao/nemo/bean/SubjectInfo;

    .line 303
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_background_one()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivCover:Landroid/widget/ImageView;

    const v2, 0x7f0800b6

    const v3, 0x7f0803d7

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/util/GlideUtils;->loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_dec:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_work:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_39
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 296
    check-cast p1, Lcom/codemao/nemo/bean/SubjectInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;->onSuc(Lcom/codemao/nemo/bean/SubjectInfo;)V

    return-void
.end method
