.class public Lcom/codemao/creativestore/player/CreativePlayerWebview;
.super Lcom/codemao/creativestore/dsbridge/DWebView;
.source "CreativePlayerWebview.java"

# interfaces
.implements Lcom/codemao/creativestore/player/CreativePlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/dsbridge/DWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativestore/dsbridge/DWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getPlayerImpl()Lcom/codemao/creativestore/player/CreativePlayer;
    .registers 1

    return-object p0
.end method

.method public getPlayerScreenShot()V
    .registers 1

    return-void
.end method

.method public setAskDialogPosition(Z)V
    .registers 2

    return-void
.end method

.method public setupUserInfo(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
