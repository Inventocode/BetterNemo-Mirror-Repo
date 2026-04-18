.class final Lcom/chuanglan/shanyan_sdk/tool/b$4;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/b;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object p4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->e:Ljava/lang/String;

    iput p6, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->f:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 p1, 0x1

    const/4 v0, 0x2

    :try_start_2
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->al:Lcom/chuanglan/shanyan_sdk/listener/OnClickPrivacyListener;

    const/4 v2, 0x3

    if-eqz v1, :cond_1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/listener/OnClickPrivacyListener;->getOnClickPrivacyStatus(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->am:Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;

    if-eqz v1, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;->setAuthPageActionListener(IILjava/lang/String;)V

    :cond_3e
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTitleArray()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTitleArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_58

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTitleArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_5a

    :cond_58
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->a:Ljava/lang/String;

    :goto_5a
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->d:Landroid/content/Context;

    const-class v4, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "url"

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "title"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_79} :catch_7a

    goto :goto_8c

    :catch_7a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "clickableSpan4 Exception_e="

    aput-object v3, v0, v2

    aput-object v1, v0, p1

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8c
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyNameUnderline()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    goto :goto_13

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :goto_13
    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/b$4;->f:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return-void
.end method
