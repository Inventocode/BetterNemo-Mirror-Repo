.class final Lcom/chuanglan/shanyan_sdk/tool/b$2;
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

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object p4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->e:Ljava/lang/String;

    iput p6, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->f:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 p1, 0x0

    const/4 v0, 0x1

    :try_start_2
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->al:Lcom/chuanglan/shanyan_sdk/listener/OnClickPrivacyListener;

    if-eqz v1, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/listener/OnClickPrivacyListener;->getOnClickPrivacyStatus(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1e
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->am:Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;

    if-eqz v1, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v0, v2}, Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;->setAuthPageActionListener(IILjava/lang/String;)V

    :cond_3d
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTitleArray()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTitleArray()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_57

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyTitleArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    goto :goto_59

    :cond_57
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->a:Ljava/lang/String;

    :goto_59
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->d:Landroid/content/Context;

    const-class v4, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "url"

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "title"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_79

    goto :goto_8b

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "clickableSpan2 Exception_e="

    aput-object v3, v2, p1

    aput-object v1, v2, v0

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8b
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->c:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

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
    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/b$2;->f:I

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
