.class public Lcom/codemao/nemo/activity/TipOffActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "TipOffActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/KeyboardHeightObserver;


# instance fields
.field cbAd:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbCopy:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbDirty:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbIllegal:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbOther:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbPivate:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cbYellow:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field editText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private hidePopBottom:I

.field private id:J

.field private isAlreadyScroll:Z

.field private isInit:Z

.field private keyBoardHeight:I

.field private keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

.field private limitBottom:I

.field llContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llRoot:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private reason:Ljava/lang/String;

.field private screenHeight:I

.field tvCommit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvLimit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvReasonCopy:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I

.field private workId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->type:I

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isInit:Z

    .line 75
    iput v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->hidePopBottom:I

    .line 76
    iput v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyBoardHeight:I

    .line 77
    iput v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->screenHeight:I

    .line 78
    iput v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->limitBottom:I

    .line 83
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isAlreadyScroll:Z

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/TipOffActivity;I)I
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->screenHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/TipOffActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/TipOffActivity;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/nemo/activity/TipOffActivity;->checkEmpty()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/TipOffActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method private checkEmpty()V
    .registers 4

    .line 339
    iget v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 340
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_21

    .line 343
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3a

    .line 341
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3a

    .line 346
    :cond_27
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3a

    .line 349
    :cond_35
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_3a
    return-void
.end method

.method private initData()V
    .registers 5

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->type:I

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->content:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->id:J

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->workId:J

    .line 121
    iget v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->type:I

    if-nez v0, :cond_3b

    const-string/jumbo v0, "作品举报页"

    goto :goto_3e

    :cond_3b
    const-string/jumbo v0, "评论举报页"

    :goto_3e
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 128
    :cond_13
    iget v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->type:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_25

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_37

    .line 132
    :cond_25
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvReasonCopy:Landroid/widget/TextView;

    const-string/jumbo v3, "刷屏"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 136
    :goto_37
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvLimit:Landroid/widget/TextView;

    const-string/jumbo v1, "还可输<font color=\"#6f60dd\">50</font>个字符"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/activity/TipOffActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/TipOffActivity$2;-><init>(Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static tipComment(Landroid/content/Context;JJLjava/lang/String;)V
    .registers 9

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "workId"

    .line 88
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "id"

    .line 89
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "content"

    .line 90
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tipOffComment()V
    .registers 8

    .line 316
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->workId:J

    iget-wide v3, p0, Lcom/codemao/nemo/activity/TipOffActivity;->id:J

    iget-object v5, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    new-instance v6, Lcom/codemao/nemo/activity/TipOffActivity$4;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/activity/TipOffActivity$4;-><init>(Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->tipOffComment(JJLjava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private tipOffWork()V
    .registers 7

    .line 293
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->id:J

    iget-object v3, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/nemo/activity/TipOffActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/codemao/nemo/activity/TipOffActivity$3;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/activity/TipOffActivity$3;-><init>(Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->tipOffWork(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method


# virtual methods
.method close(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0062

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "作品举报页"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Lcom/codemao/nemo/activity/TipOffActivity;->initData()V

    .line 102
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 104
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->screenHeight:I

    .line 105
    invoke-direct {p0}, Lcom/codemao/nemo/activity/TipOffActivity;->initView()V

    .line 106
    new-instance p1, Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    .line 107
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvLimit:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/activity/TipOffActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/TipOffActivity$1;-><init>(Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 230
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->close()V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 7

    .line 241
    iget-boolean p2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isInit:Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_18

    .line 242
    iget p2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x5

    if-ge p1, p2, :cond_11

    .line 243
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isInit:Z

    .line 244
    iput p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->hidePopBottom:I

    goto :goto_2d

    .line 246
    :cond_11
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isInit:Z

    .line 247
    iput v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->hidePopBottom:I

    .line 248
    iput p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyBoardHeight:I

    goto :goto_2d

    .line 251
    :cond_18
    iget p2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->screenHeight:I

    div-int/lit8 v2, p2, 0x5

    if-ge p1, v2, :cond_20

    .line 252
    iput p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->hidePopBottom:I

    .line 254
    :cond_20
    iget v2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->hidePopBottom:I

    if-le p1, v2, :cond_2d

    sub-int v3, p1, v2

    div-int/2addr p2, v0

    if-le v3, p2, :cond_2d

    sub-int p2, p1, v2

    .line 255
    iput p2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyBoardHeight:I

    .line 258
    :cond_2d
    :goto_2d
    iget p2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->screenHeight:I

    div-int/2addr p2, v0

    if-le p1, p2, :cond_68

    .line 259
    iget p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->limitBottom:I

    const/4 p2, 0x1

    if-gtz p1, :cond_4d

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 262
    aget p1, p1, p2

    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->limitBottom:I

    .line 264
    :cond_4d
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvLimit:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->limitBottom:I

    iget v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->screenHeight:I

    iget v2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyBoardHeight:I

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    if-lez p1, :cond_65

    .line 267
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isAlreadyScroll:Z

    if-nez v0, :cond_65

    .line 268
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 270
    :cond_65
    iput-boolean p2, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isAlreadyScroll:Z

    goto :goto_74

    .line 272
    :cond_68
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->tvLimit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 274
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->isAlreadyScroll:Z

    :goto_74
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 218
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 224
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onStop()V

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method protected screenFull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method selectReason(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbAd:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbDirty:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbPivate:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbYellow:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbOther:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbIllegal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbCopy:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_88

    goto :goto_83

    :pswitch_2d  #0x7f0a04df
    const-string/jumbo p1, "色情低俗"

    .line 176
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbYellow:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_83

    :pswitch_38  #0x7f0a04de
    const-string/jumbo p1, "造谣、引战"

    .line 184
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbPivate:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_83

    :pswitch_43  #0x7f0a04dd
    const-string/jumbo p1, "其他"

    .line 204
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbOther:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_83

    :pswitch_4e  #0x7f0a04dc
    const-string/jumbo p1, "违法违规"

    .line 180
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    .line 181
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbIllegal:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_83

    :pswitch_59  #0x7f0a04db
    const-string/jumbo p1, "脏话暴力"

    .line 188
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbDirty:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_83

    .line 196
    :pswitch_64  #0x7f0a04da
    iget p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->type:I

    if-nez p1, :cond_6e

    const-string/jumbo p1, "抄袭"

    .line 197
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    goto :goto_73

    :cond_6e
    const-string/jumbo p1, "刷屏"

    .line 199
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    .line 201
    :goto_73
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbCopy:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_83

    :pswitch_79  #0x7f0a04d9
    const-string/jumbo p1, "广告"

    .line 192
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->reason:Ljava/lang/String;

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->cbAd:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    :goto_83
    invoke-direct {p0}, Lcom/codemao/nemo/activity/TipOffActivity;->checkEmpty()V

    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x7f0a04d9
        :pswitch_79  #7f0a04d9
        :pswitch_64  #7f0a04da
        :pswitch_59  #7f0a04db
        :pswitch_4e  #7f0a04dc
        :pswitch_43  #7f0a04dd
        :pswitch_38  #7f0a04de
        :pswitch_2d  #7f0a04df
    .end packed-switch
.end method

.method tipOff(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 281
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez p1, :cond_11

    .line 282
    new-instance p1, Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    const-string v0, "举报提交中"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->setCotent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 284
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 285
    iget p1, p0, Lcom/codemao/nemo/activity/TipOffActivity;->type:I

    if-nez p1, :cond_1e

    .line 286
    invoke-direct {p0}, Lcom/codemao/nemo/activity/TipOffActivity;->tipOffWork()V

    goto :goto_24

    :cond_1e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_24

    .line 288
    invoke-direct {p0}, Lcom/codemao/nemo/activity/TipOffActivity;->tipOffComment()V

    :cond_24
    :goto_24
    return-void
.end method
