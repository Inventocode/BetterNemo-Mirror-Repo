.class Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 19

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/chuanglan/shanyan_sdk/b;->ah:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/chuanglan/shanyan_sdk/b;->ag:J

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->a(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_5d

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->b(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)I

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->c(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)I

    move-result v0

    const/4 v5, 0x5

    if-lt v0, v5, :cond_35

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->d(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_51

    :cond_35
    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->e(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->e(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->f(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    :goto_51
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->am:Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;

    if-eqz v0, :cond_123

    const-string/jumbo v5, "点击登录按钮（协议框已勾选）"

    invoke-interface {v0, v4, v2, v5}, Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;->setAuthPageActionListener(IILjava/lang/String;)V

    goto/16 :goto_123

    :cond_5d
    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->e(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyToastHidden()Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyCustomToast()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_aa

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyCustomToastText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyCustomToastText()Ljava/lang/String;

    move-result-object v5

    :goto_9c
    invoke-static {v0, v5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b7

    :cond_a0
    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "请勾选协议"

    goto :goto_9c

    :cond_aa
    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->g(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyCustomToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_b7
    :goto_b7
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->am:Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;

    if-eqz v0, :cond_123

    const-string/jumbo v5, "点击登录按钮（协议框未勾选）"

    invoke-interface {v0, v4, v3, v5}, Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;->setAuthPageActionListener(IILjava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c1} :catch_c2

    goto :goto_123

    :catch_c2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v4

    const/16 v5, 0x3f6

    const/16 v6, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setOnClickListener--Exception_e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)J

    move-result-wide v13

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->j(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)J

    move-result-wide v15

    const-string v6, "CMCC"

    const-string v9, ""

    invoke-virtual/range {v4 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    sget-object v4, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "setOnClickListener Exception="

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v4}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->finish()V

    :cond_123
    :goto_123
    return-void
.end method
