.class public Lcom/codemao/creativestore/bean/WebUserInfo;
.super Ljava/lang/Object;
.source "WebUserInfo.java"


# instance fields
.field public avatar_url:Ljava/lang/String;

.field public bcm_version:Ljava/lang/String;

.field public isLogin:Z

.field public nickname:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public user_level:I

.field public user_token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->isLogin:Z

    .line 22
    iput-object p3, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_token:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->nickname:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->avatar_url:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_id:Ljava/lang/String;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_level:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->isLogin:Z

    .line 13
    iput-object p3, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_token:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->nickname:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->avatar_url:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_id:Ljava/lang/String;

    .line 17
    iput p5, p0, Lcom/codemao/creativestore/bean/WebUserInfo;->user_level:I

    return-void
.end method
