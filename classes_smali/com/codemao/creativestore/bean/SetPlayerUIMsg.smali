.class public Lcom/codemao/creativestore/bean/SetPlayerUIMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "SetPlayerUIMsg.java"


# instance fields
.field private bottom_tip_text:Ljava/lang/String;

.field private centre_tip_text:Ljava/lang/String;

.field private enable_bg_blur:Z

.field private enable_cover:Z

.field private enable_floating_menu:Z

.field private enable_login_btn:Z

.field private enable_user_info:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 16
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_login_btn:Z

    .line 18
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_user_info:Z

    .line 19
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_floating_menu:Z

    .line 20
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_cover:Z

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_bg_blur:Z

    return-void
.end method


# virtual methods
.method public getBottom_tip_text()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->bottom_tip_text:Ljava/lang/String;

    return-object v0
.end method

.method public getCentre_tip_text()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->centre_tip_text:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable_bg_blur()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_bg_blur:Z

    return v0
.end method

.method public isEnable_login_btn()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_login_btn:Z

    return v0
.end method

.method public setBottom_tip_text(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->bottom_tip_text:Ljava/lang/String;

    return-void
.end method

.method public setCentre_tip_text(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->centre_tip_text:Ljava/lang/String;

    return-void
.end method

.method public setEnable_bg_blur(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_bg_blur:Z

    return-void
.end method

.method public setEnable_login_btn(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/SetPlayerUIMsg;->enable_login_btn:Z

    return-void
.end method
