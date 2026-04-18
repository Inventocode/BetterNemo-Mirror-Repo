.class public Lcom/codemao/nemo/dialog/LocalWebShareDialog;
.super Landroid/app/Dialog;
.source "LocalWebShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/LocalWebShareDialog$OnCopyListener;
    }
.end annotation


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private clipManager:Landroid/content/ClipboardManager;

.field private copyListener:Lcom/codemao/nemo/dialog/LocalWebShareDialog$OnCopyListener;

.field private listener:Lcn/codemao/android/share/interfaces/IshareResult;

.field llShareLink:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShareQQ:Landroid/widget/LinearLayout;
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


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;)V
    .registers 4

    const v0, 0x7f13034c

    .line 70
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 73
    new-instance p1, Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getContentType()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    .line 74
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getImgUrls()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getTitleWX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getCopyLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ShareModel;->getDescriptionMoment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/ShareModel;->setDescriptionMoment(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wx5966b00f345eb948"

    invoke-static {p1, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 82
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "101477015"

    invoke-static {p2, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    return-void
.end method

.method private init()V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x1

    .line 109
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 110
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 111
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->tvCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/LocalWebShareDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog$1;-><init>(Lcom/codemao/nemo/dialog/LocalWebShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v0, :cond_52

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_57

    .line 124
    :cond_52
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_57
    if-nez v1, :cond_5f

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_64

    .line 130
    :cond_5f
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_64
    return-void
.end method

.method private share(I)V
    .registers 4

    if-eqz p1, :cond_79

    const/4 v0, 0x1

    if-eq p1, v0, :cond_68

    const/4 v0, 0x2

    if-eq p1, v0, :cond_57

    const/4 v0, 0x3

    if-eq p1, v0, :cond_46

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    goto/16 :goto_89

    .line 171
    :cond_10
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ShareModel;->getCopyLink()Ljava/lang/String;

    move-result-object p1

    const-string v0, "simple text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->clipManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_3d

    .line 174
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 176
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    const-string/jumbo v0, "链接已复制到剪贴板"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->copyListener:Lcom/codemao/nemo/dialog/LocalWebShareDialog$OnCopyListener;

    if-eqz p1, :cond_89

    .line 178
    invoke-interface {p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog$OnCopyListener;->copyLink()V

    goto :goto_89

    .line 181
    :cond_3d
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    const-string/jumbo v0, "复制失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_89

    .line 162
    :cond_46
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->QQZONE:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto :goto_89

    .line 153
    :cond_57
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->QQ:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 154
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto :goto_89

    .line 148
    :cond_68
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->WECHATCIRCLE:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModelWX:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    goto :goto_89

    .line 143
    :cond_79
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    sget-object v0, Lcn/codemao/android/share/bean/ShareMedia;->WECHAT:Lcn/codemao/android/share/bean/ShareMedia;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V

    .line 144
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    invoke-static {p1, v0, v1}, Lcn/codemao/android/share/CodeMaoShare;->share(Landroid/app/Activity;Lcn/codemao/android/share/interfaces/IshareInfo;Lcn/codemao/android/share/interfaces/IshareResult;)V

    :cond_89
    :goto_89
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 98
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->init()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 237
    invoke-static {}, Lcn/codemao/android/share/CodeMaoShare;->destory()V

    return-void
.end method

.method public onShare(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_34

    :pswitch_7  #0x7f0a04a2
    goto :goto_32

    .line 192
    :pswitch_8  #0x7f0a04a3
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->share(I)V

    goto :goto_32

    .line 199
    :pswitch_1b  #0x7f0a04a1
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_29
    const/4 p1, 0x2

    .line 203
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->share(I)V

    goto :goto_32

    :pswitch_2e  #0x7f0a04a0
    const/4 p1, 0x4

    .line 206
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->share(I)V

    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x7f0a04a0
        :pswitch_2e  #7f0a04a0
        :pswitch_1b  #7f0a04a1
        :pswitch_7  #7f0a04a2
        :pswitch_8  #7f0a04a3
    .end packed-switch
.end method

.method public setShareListener(Lcn/codemao/android/share/interfaces/IshareResult;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->listener:Lcn/codemao/android/share/interfaces/IshareResult;

    return-object p0
.end method

.method public setShareModel(Lcom/codemao/nemo/bean/ShareModel;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    return-object p0
.end method

.method public show()V
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    .line 215
    iget-object v2, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareQQ:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_33

    iget-object v3, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_33

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_23

    .line 217
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_26

    .line 219
    :cond_23
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_26
    if-nez v1, :cond_2e

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    .line 225
    :cond_2e
    iget-object v0, p0, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->llShareWechat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    :cond_33
    :goto_33
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
