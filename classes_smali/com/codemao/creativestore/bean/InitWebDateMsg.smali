.class public Lcom/codemao/creativestore/bean/InitWebDateMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "InitWebDateMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;
    }
.end annotation


# instance fields
.field public avatar_url:Ljava/lang/String;

.field public bcm_version:Ljava/lang/String;

.field public context_menu_with_set_block_visibility:Z

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public enable_hide:Z

.field private hardware_mode:Ljava/lang/String;

.field public is_login:Z

.field private is_pad:Z

.field public nickname:Ljava/lang/String;

.field private sidebar_width:I

.field private stage_position:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

.field private toolbox_mode:Ljava/lang/String;

.field public translucent_block_visible:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public user_level:I

.field public user_token:Ljava/lang/String;

.field public webview_height:I

.field public work_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;Lcom/codemao/creativestore/bean/TheateConfigInfo;Lcom/codemao/creativestore/bean/WebUserInfo;ILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;",
            "Lcom/codemao/creativestore/bean/TheateConfigInfo;",
            "Lcom/codemao/creativestore/bean/WebUserInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->stage_position:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    .line 50
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->work_id:Ljava/lang/String;

    .line 51
    iget-object p1, p4, Lcom/codemao/creativestore/bean/WebUserInfo;->nickname:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->nickname:Ljava/lang/String;

    .line 52
    iget-object p1, p4, Lcom/codemao/creativestore/bean/WebUserInfo;->user_token:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->user_token:Ljava/lang/String;

    .line 53
    iget-object p1, p4, Lcom/codemao/creativestore/bean/WebUserInfo;->user_id:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->user_id:Ljava/lang/String;

    .line 54
    iget p1, p4, Lcom/codemao/creativestore/bean/WebUserInfo;->user_level:I

    iput p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->user_level:I

    .line 55
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->is_pad:Z

    .line 56
    iget-object p1, p4, Lcom/codemao/creativestore/bean/WebUserInfo;->avatar_url:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->avatar_url:Ljava/lang/String;

    .line 57
    iget-object p1, p4, Lcom/codemao/creativestore/bean/WebUserInfo;->bcm_version:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->bcm_version:Ljava/lang/String;

    .line 58
    iget-boolean p1, p3, Lcom/codemao/creativestore/bean/TheateConfigInfo;->enable_hide:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->enable_hide:Z

    .line 59
    iget-object p1, p3, Lcom/codemao/creativestore/bean/TheateConfigInfo;->block_visible:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->translucent_block_visible:Ljava/lang/String;

    .line 60
    iget-boolean p1, p4, Lcom/codemao/creativestore/bean/WebUserInfo;->isLogin:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->is_login:Z

    .line 61
    iget-boolean p1, p3, Lcom/codemao/creativestore/bean/TheateConfigInfo;->hasBlockVisSet:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->context_menu_with_set_block_visibility:Z

    .line 62
    iput p5, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->sidebar_width:I

    .line 63
    iput-object p7, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->devices:Ljava/util/List;

    .line 64
    iput-object p6, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->toolbox_mode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/TheateConfigInfo;Lcom/codemao/creativestore/bean/WebUserInfo;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->work_id:Ljava/lang/String;

    .line 69
    iget-object p1, p3, Lcom/codemao/creativestore/bean/WebUserInfo;->nickname:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->nickname:Ljava/lang/String;

    .line 70
    iget-object p1, p3, Lcom/codemao/creativestore/bean/WebUserInfo;->user_token:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->user_token:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->is_pad:Z

    .line 72
    iget-object p1, p3, Lcom/codemao/creativestore/bean/WebUserInfo;->user_id:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->user_id:Ljava/lang/String;

    .line 73
    iget p1, p3, Lcom/codemao/creativestore/bean/WebUserInfo;->user_level:I

    iput p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->user_level:I

    .line 74
    iget-object p1, p3, Lcom/codemao/creativestore/bean/WebUserInfo;->avatar_url:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->avatar_url:Ljava/lang/String;

    .line 75
    iget-object p1, p3, Lcom/codemao/creativestore/bean/WebUserInfo;->bcm_version:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->bcm_version:Ljava/lang/String;

    .line 76
    iget-boolean p1, p2, Lcom/codemao/creativestore/bean/TheateConfigInfo;->enable_hide:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->enable_hide:Z

    .line 77
    iget-object p1, p2, Lcom/codemao/creativestore/bean/TheateConfigInfo;->block_visible:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->translucent_block_visible:Ljava/lang/String;

    .line 78
    iget-boolean p1, p3, Lcom/codemao/creativestore/bean/WebUserInfo;->isLogin:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->is_login:Z

    .line 79
    iget-boolean p1, p2, Lcom/codemao/creativestore/bean/TheateConfigInfo;->hasBlockVisSet:Z

    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg;->context_menu_with_set_block_visibility:Z

    return-void
.end method
