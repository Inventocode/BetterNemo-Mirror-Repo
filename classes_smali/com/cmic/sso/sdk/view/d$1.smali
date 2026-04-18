.class final Lcom/cmic/sso/sdk/view/d$1;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/view/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmic/sso/sdk/view/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cmic/sso/sdk/view/c;)V
    .registers 3

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/d$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmic/sso/sdk/view/d$1;->b:Lcom/cmic/sso/sdk/view/c;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/d$1;->b:Lcom/cmic/sso/sdk/view/c;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/d$1;->b:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/c;->show()V

    :cond_f
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :try_start_7
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/d$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    const v0, -0xf441fa

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1f
    return-void
.end method
