.class public Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
.super Landroid/app/Dialog;
.source "GenerateMiaoCodeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$NotSupportCallback;,
        Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;,
        Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;,
        Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;,
        Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;
    }
.end annotation


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private closeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivLoading:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivOpening:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGenerateMiaoCodeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;

.field private mGenerateMiaoCodeErrorCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;

.field private mShowMiaoCodeErrorCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;

.field private miaoCode:Ljava/lang/String;

.field private notSupportCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$NotSupportCallback;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlDownloadSuccess:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlFail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlLoading:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlNetFail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlNotSupport:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlOpening:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlSuccess:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private titleText:Ljava/lang/String;

.field tvLater:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvLaterOpening:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNetTry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNotSupportButton:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNotSupportName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNotSupportShowLater:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvOpen:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvOpenKn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvParse:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f130343

    .line 110
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 111
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->miaoCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->closeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mGenerateMiaoCodeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mGenerateMiaoCodeErrorCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mShowMiaoCodeErrorCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->miaoCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$NotSupportCallback;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->notSupportCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$NotSupportCallback;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0122

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 129
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 130
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 132
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 133
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 134
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 135
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 139
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$1;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvParse:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$2;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNetTry:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$3;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvTry:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$4;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvOpen:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$5;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvOpenKn:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$6;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvLater:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$7;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvLaterOpening:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$8;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNotSupportButton:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$9;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->titleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 233
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNotSupportName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_ad
    iget v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->type:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 323
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 118
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->init()V

    .line 120
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->miaoCode:Ljava/lang/String;

    if-nez p1, :cond_11

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvOpenKn:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method public setCloseCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->closeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;

    return-void
.end method

.method public setGenerateMiaoCodeCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mGenerateMiaoCodeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;

    return-void
.end method

.method public setGenerateMiaoCodeErrorCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mGenerateMiaoCodeErrorCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;

    return-void
.end method

.method public setNotSupportCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$NotSupportCallback;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->notSupportCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$NotSupportCallback;

    return-void
.end method

.method public setProgress(II)V
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    mul-int/lit8 p1, p1, 0x64

    .line 351
    div-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_a
    return-void
.end method

.method public setShowMiaoCodeCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->mShowMiaoCodeErrorCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->titleText:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 2

    .line 261
    iput p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->type:I

    return-object p0
.end method

.method public showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 4

    .line 275
    iput p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->type:I

    .line 276
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlLoading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlSuccess:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlFail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlOpening:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlDownloadSuccess:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlNetFail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlNotSupport:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_7e

    :pswitch_2b  #0x7
    goto :goto_7d

    .line 311
    :pswitch_2c  #0x8
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->tvNotSupportShowLater:Landroid/widget/TextView;

    const-string v1, "当前页不支持直接打开，稍后可在\"<font color=\"#6F60DD\">我的-草稿箱 </font>\"查看"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlNotSupport:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7d

    .line 304
    :pswitch_3d  #0x6
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlNetFail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7d

    :pswitch_43  #0x5
    const p1, 0x7f0805f1

    .line 300
    iget-object v1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->ivOpening:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    .line 301
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlOpening:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7d

    .line 297
    :pswitch_51  #0x4
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlDownloadSuccess:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7d

    .line 294
    :pswitch_57  #0x3
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlFail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7d

    .line 291
    :pswitch_5d  #0x2
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlSuccess:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7d

    .line 285
    :pswitch_63  #0x1
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->rlLoading:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->ivLoading:Landroid/widget/ImageView;

    const v0, 0x7f08082b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 288
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_7d
    return-object p0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_63  #00000001
        :pswitch_5d  #00000002
        :pswitch_57  #00000003
        :pswitch_51  #00000004
        :pswitch_43  #00000005
        :pswitch_3d  #00000006
        :pswitch_2b  #00000007
        :pswitch_2c  #00000008
    .end packed-switch
.end method
