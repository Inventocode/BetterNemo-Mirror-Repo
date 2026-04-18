.class public Lcom/codemao/nemo/dialog/ShareDialog;
.super Landroid/app/Dialog;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;
    }
.end annotation


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private clipManager:Landroid/content/ClipboardManager;

.field private copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

.field private listener:Lcn/codemao/android/share/interfaces/IshareResult;

.field llShareCircle:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareLink:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareQQ:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareQzone:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareWechat:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private shareModel:Lcom/codemao/nemo/bean/ShareModel;

.field private shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

.field tvCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I

.field private workId:J

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;I)V
    .registers 5

    const v0, 0x7f13034c

    .line 108
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    .line 110
    iput p3, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    .line 111
    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 112
    new-instance p1, Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getContentType()I

    move-result p3

    invoke-direct {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    .line 113
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getImgUrls()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 114
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getTitleWX()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getCopyLink()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getDescriptionMoment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/ShareModel;->setDescriptionMoment(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wx5966b00f345eb948"

    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "101477015"

    invoke-static {p2, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;JLjava/lang/String;I)V
    .registers 8

    const v0, 0x7f13034c

    .line 89
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    .line 91
    iput p6, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    .line 92
    iput-wide p3, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workId:J

    .line 93
    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 94
    iput-object p5, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workType:Ljava/lang/String;

    .line 95
    new-instance p1, Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getContentType()I

    move-result p3

    invoke-direct {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    .line 96
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getImgUrls()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getTitleWX()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getCopyLink()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getDescriptionMoment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/ShareModel;->setDescriptionMoment(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wx5966b00f345eb948"

    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 104
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "101477015"

    invoke-static {p2, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/ShareDialog;)Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x1

    .line 148
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 149
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 150
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->tvCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/ShareDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/ShareDialog$1;-><init>(Lcom/codemao/nemo/dialog/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareDialog;->initViewCheckQQWX()V

    return-void
.end method

.method private initViewCheckQQWX()V
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareLink:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    .line 308
    :cond_5
    iget v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-ne v1, v2, :cond_10

    .line 309
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_51

    .line 311
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_30

    .line 314
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3a

    .line 317
    :cond_30
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareQzone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3a
    if-nez v1, :cond_47

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_51

    .line 325
    :cond_47
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareCircle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_51
    return-void
.end method

.method private share(I)V
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    .line 168
    iget-object v2, p0, Lcom/codemao/nemo/dialog/ShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    if-nez v2, :cond_1d

    .line 169
    new-instance v2, Lcom/codemao/nemo/dialog/ShareDialog$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/ShareDialog$2;-><init>(Lcom/codemao/nemo/dialog/ShareDialog;)V

    iput-object v2, p0, Lcom/codemao/nemo/dialog/ShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    :cond_1d
    const-string/jumbo v2, "还没有安装微信哦~"

    const-string v3, ""

    if-eqz p1, :cond_19c

    const/4 v4, 0x1

    if-eq p1, v4, :cond_14a

    const/4 v1, 0x2

    const-string/jumbo v2, "还没有安装QQ哦~"

    if-eq p1, v1, :cond_f7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_35

    goto/16 :goto_1ed

    .line 245
    :cond_35
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    if-eqz v0, :cond_3f

    const-string/jumbo v1, "点击分享链接"

    .line 246
    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;->onShareClick(ILjava/lang/String;)V

    .line 248
    :cond_3f
    iget p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    if-nez p1, :cond_6c

    .line 249
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击分享链接"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    :cond_6c
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ShareModel;->getCopyLink()Ljava/lang/String;

    move-result-object p1

    const-string v0, "simple text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->clipManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_9a

    .line 254
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    const-string/jumbo v0, "链接已复制到剪贴板"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    if-eqz p1, :cond_1ed

    .line 257
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;->copyLink()V

    goto/16 :goto_1ed

    .line 260
    :cond_9a
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    const-string/jumbo v0, "复制失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_1ed

    :cond_a4
    if-nez v0, :cond_ae

    .line 232
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 235
    :cond_ae
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    if-eqz v0, :cond_b8

    const-string/jumbo v1, "点击分享qq空间"

    .line 236
    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;->onShareClick(ILjava/lang/String;)V

    .line 238
    :cond_b8
    iget p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    if-nez p1, :cond_e5

    .line 239
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击分享到QQ空间"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    :cond_e5
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->QQZONE:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 242
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto/16 :goto_1ed

    :cond_f7
    if-nez v0, :cond_101

    .line 218
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 221
    :cond_101
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    if-eqz v0, :cond_10b

    const-string/jumbo v1, "点击分享qq好友"

    .line 222
    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;->onShareClick(ILjava/lang/String;)V

    .line 224
    :cond_10b
    iget p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    if-nez p1, :cond_138

    .line 225
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击分享到QQ"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    :cond_138
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->QQ:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 228
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto/16 :goto_1ed

    :cond_14a
    if-nez v1, :cond_154

    .line 204
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 207
    :cond_154
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    if-eqz v0, :cond_15e

    const-string/jumbo v1, "点击分享微信朋友圈"

    .line 208
    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;->onShareClick(ILjava/lang/String;)V

    .line 210
    :cond_15e
    iget p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    if-nez p1, :cond_18b

    .line 211
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击分享到朋友圈"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    :cond_18b
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->WECHATCIRCLE:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto :goto_1ed

    :cond_19c
    if-nez v1, :cond_1a6

    .line 189
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 192
    :cond_1a6
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    if-eqz v0, :cond_1b0

    const-string/jumbo v1, "点击分享微信好友"

    .line 193
    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;->onShareClick(ILjava/lang/String;)V

    .line 195
    :cond_1b0
    iget p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->type:I

    if-nez p1, :cond_1dd

    .line 196
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->workType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击分享到微信"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 199
    :cond_1dd
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->WECHAT:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    :cond_1ed
    :goto_1ed
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 137
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareDialog;->init()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 347
    invoke-static {}, Lcn/codemao/android/share/CodeMaoShare;->destory()V

    return-void
.end method

.method public onShare(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_5a

    goto :goto_58

    .line 271
    :pswitch_8  #0x7f0a04a3
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 272
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 275
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog;->share(I)V

    goto :goto_58

    .line 292
    :pswitch_1b  #0x7f0a04a2
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 293
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_29
    const/4 p1, 0x3

    .line 296
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog;->share(I)V

    goto :goto_58

    .line 285
    :pswitch_2e  #0x7f0a04a1
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_3c
    const/4 p1, 0x2

    .line 289
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog;->share(I)V

    goto :goto_58

    :pswitch_41  #0x7f0a04a0
    const/4 p1, 0x4

    .line 299
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog;->share(I)V

    goto :goto_58

    .line 278
    :pswitch_46  #0x7f0a049f
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 279
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_54
    const/4 p1, 0x1

    .line 282
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/ShareDialog;->share(I)V

    :goto_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x7f0a049f
        :pswitch_46  #7f0a049f
        :pswitch_41  #7f0a04a0
        :pswitch_2e  #7f0a04a1
        :pswitch_1b  #7f0a04a2
        :pswitch_8  #7f0a04a3
    .end packed-switch
.end method

.method public setCopyListener(Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;)Lcom/codemao/nemo/dialog/ShareDialog;
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->copyListener:Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;

    return-object p0
.end method

.method public setShareListener(Lcn/codemao/android/share/interfaces/IshareResult;)Lcom/codemao/nemo/dialog/ShareDialog;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    return-object p0
.end method

.method public show()V
    .registers 1

    .line 333
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/ShareDialog;->initViewCheckQQWX()V

    .line 334
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
