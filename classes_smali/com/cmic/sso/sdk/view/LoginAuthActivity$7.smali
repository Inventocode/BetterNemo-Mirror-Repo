.class Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    const/4 p1, 0x1

    if-eqz p2, :cond_36

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :try_start_c
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_71

    :catch_24
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    const-string v0, "umcsdk_check_image"

    :goto_2e
    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_71

    :cond_36
    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :try_start_4e
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getUncheckedImgPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_65} :catch_66

    goto :goto_71

    :catch_66
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    const-string v0, "umcsdk_uncheck_image"

    goto :goto_2e

    :goto_71
    return-void
.end method
