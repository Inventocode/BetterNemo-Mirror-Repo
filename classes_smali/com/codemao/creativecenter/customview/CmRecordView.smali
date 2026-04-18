.class public Lcom/codemao/creativecenter/customview/CmRecordView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmRecordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;,
        Lcom/codemao/creativecenter/customview/CmRecordView$CallStateListener;
    }
.end annotation


# instance fields
.field private callStateListener:Lcom/codemao/creativecenter/customview/CmRecordView$CallStateListener;

.field private callStateListenerRegistered:Z

.field private cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

.field public countDownTimer:Landroid/os/CountDownTimer;

.field private creative_record_1:Landroid/media/MediaPlayer;

.field private curState:I

.field public isBackground:Z

.field private iv_back:Landroid/widget/ImageView;

.field private iv_center:Landroid/widget/ImageView;

.field private iv_save_recode:Landroid/widget/ImageView;

.field private iv_sure:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private parentPath:Ljava/lang/String;

.field public playCountDown:Landroid/os/CountDownTimer;

.field private progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

.field private recordPath:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field public total:I

.field private tv_count_down:Landroid/widget/TextView;

.field private uuId:Ljava/lang/String;

.field private view_red:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 98
    new-instance p3, Lcom/codemao/creativecenter/customview/CmRecordView$1;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/customview/CmRecordView$1;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 145
    new-instance p3, Lcom/codemao/creativecenter/customview/CmRecordView$2;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/customview/CmRecordView$2;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    .line 471
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->callStateListenerRegistered:Z

    .line 473
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_22

    .line 474
    new-instance p2, Lcom/codemao/creativecenter/customview/CmRecordView$5;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/customview/CmRecordView$5;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    .line 481
    :goto_23
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->callStateListener:Lcom/codemao/creativecenter/customview/CmRecordView$CallStateListener;

    .line 124
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz p2, :cond_34

    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_view_recorder_controller_pad:I

    goto :goto_36

    :cond_34
    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_view_recorder_controller:I

    :goto_36
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 127
    sget p1, Lcom/codemao/creativecenter/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    .line 128
    sget p1, Lcom/codemao/creativecenter/R$id;->view_red:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    .line 129
    sget p1, Lcom/codemao/creativecenter/R$id;->tv_count_down:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->tv_count_down:Landroid/widget/TextView;

    .line 130
    sget p1, Lcom/codemao/creativecenter/R$id;->progress:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/customview/CircleProgressView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    .line 131
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_center:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    .line 132
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_save_recode:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    .line 133
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    .line 134
    sget p1, Lcom/codemao/creativecenter/R$id;->iv_sure:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    .line 136
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init--72:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x42900000  # 72.0f

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmRecordView;Z)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->clickRed(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->tv_count_down:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/ImageView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->resetStatusToPlay()V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->resetCenterToPause()V

    return-void
.end method

.method static synthetic access$1800(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->startRecord()V

    return-void
.end method

.method static synthetic access$1900(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->creative_record_1:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CmRecordView;ILjava/lang/Object;)Landroid/os/Message;
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/CmRecordView;->getMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CircleProgressView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/CmRecordView;Z)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopRecord(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/customview/CmRecordView;)Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->recordPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/customview/CmRecordView;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    return p0
.end method

.method static synthetic access$702(Lcom/codemao/creativecenter/customview/CmRecordView;I)I
    .registers 2

    .line 59
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    return p1
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->startPlay()V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    return-void
.end method

.method private addSound()V
    .registers 3

    .line 940
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    if-eqz v0, :cond_9

    .line 941
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->uuId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->addSound(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private clearHandler()V
    .registers 3

    .line 900
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 901
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private clickRed(Z)V
    .registers 3

    .line 956
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x5

    if-eq p1, v0, :cond_d

    const/16 v0, 0xa

    if-eq p1, v0, :cond_d

    goto :goto_17

    .line 968
    :cond_d
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->pausePlay()V

    goto :goto_17

    .line 958
    :cond_11
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clearHandler()V

    .line 959
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopTimer()V

    :goto_17
    return-void
.end method

.method private countDown()V
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    if-eqz v0, :cond_d

    .line 396
    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->onRequestPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 397
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->onPermissionPassed()V

    :cond_d
    return-void
.end method

.method private doRecord(Ljava/lang/String;)Z
    .registers 3

    .line 421
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/RecordHelper;->updateRecordPath(Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/customview/CmRecordView$4;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/CmRecordView$4;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/RecordHelper;->setRecordSoundSizeListener(Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;)V

    .line 431
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/RecordHelper;->startRecordVoice()Z

    move-result p1

    return p1
.end method

.method private dropFile()V
    .registers 3

    .line 946
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->recordPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 948
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method private getMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    .line 885
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 886
    iput p1, v0, Landroid/os/Message;->what:I

    .line 887
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private pausePlay()V
    .registers 2

    const/4 v0, 0x6

    .line 339
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 340
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    .line 341
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 344
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->playCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_11

    .line 345
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 347
    :cond_11
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    return-void
.end method

.method private playCountDown1()V
    .registers 5

    .line 845
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$raw;->creative_record_countdown:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->creative_record_1:Landroid/media/MediaPlayer;

    .line 846
    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$12;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmRecordView$12;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 853
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->creative_record_1:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$13;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmRecordView$13;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 860
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$14;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmRecordView$14;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    const-wide/16 v2, 0x1068

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->creative_record_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private rePlay()V
    .registers 2

    const/16 v0, 0xa

    .line 365
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 366
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->startPlay()V

    .line 367
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    return-void
.end method

.method private registerCallStateListener()V
    .registers 5

    .line 451
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->callStateListenerRegistered:Z

    if-nez v0, :cond_3c

    .line 452
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 453
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-lt v1, v2, :cond_33

    .line 454
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3c

    .line 455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->callStateListener:Lcom/codemao/creativecenter/customview/CmRecordView$CallStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 456
    iput-boolean v3, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->callStateListenerRegistered:Z

    goto :goto_3c

    .line 459
    :cond_33
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 460
    iput-boolean v3, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->callStateListenerRegistered:Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method private resetCenterToPause()V
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 825
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 826
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 827
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creatice_icon_record_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private resetStatusToPlay()V
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 835
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 836
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 837
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 838
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 839
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 840
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private startPlay()V
    .registers 8

    .line 300
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopPlay()V

    .line 302
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    .line 304
    :try_start_a
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->recordPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 306
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 307
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 308
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->total:I

    .line 309
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setMaxProgress(I)V

    .line 310
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->total:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    .line 311
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setBackWardModel()V

    .line 312
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 314
    new-instance v0, Lcom/codemao/creativecenter/customview/CmRecordView$3;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->total:I

    int-to-long v3, v1

    const-wide/16 v5, 0x64

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/customview/CmRecordView$3;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;JJ)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->playCountDown:Landroid/os/CountDownTimer;

    .line 329
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_51} :catch_52

    return-void

    :catch_52
    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private startRecord()V
    .registers 2

    const/4 v0, 0x2

    .line 409
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 412
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->recordPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->doRecord(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x7

    .line 413
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 416
    :cond_e
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    return-void
.end method

.method private stopPlay()V
    .registers 2

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->playCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_7

    .line 278
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 281
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 282
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPlayer:Landroid/media/MediaPlayer;

    .line 285
    :cond_16
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->creative_record_1:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_22

    .line 286
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 287
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->creative_record_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    return-void
.end method

.method private stopRecord(Z)V
    .registers 5

    .line 375
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/RecordHelper;->stopRecordVoice(Z)V

    .line 377
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clearHandler()V

    if-eqz p1, :cond_21

    const/4 p1, 0x3

    .line 380
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 381
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->getMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_24

    :cond_21
    const/4 p1, 0x6

    .line 383
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 386
    :goto_24
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopTimer()V

    .line 387
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    return-void
.end method

.method private stopTimer()V
    .registers 2

    .line 906
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 907
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 908
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_c
    return-void
.end method

.method private stopWaveView()V
    .registers 3

    .line 880
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    .line 881
    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->onSoundSize(I)V

    :cond_8
    return-void
.end method

.method private updateUI()V
    .registers 25

    move-object/from16 v6, p0

    .line 493
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 498
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    if-eqz v0, :cond_2c

    .line 501
    iget v2, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    invoke-interface {v0, v2}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->onStateChange(I)V

    .line 503
    :cond_2c
    iget v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    const/4 v2, 0x1

    const/16 v3, 0x258

    const/high16 v8, 0x3f800000  # 1.0f

    const-wide/16 v9, 0x15e

    const/4 v11, 0x0

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_34c

    :pswitch_3a  #0x9
    goto/16 :goto_34a

    :pswitch_3c  #0xa
    const/4 v2, 0x0

    goto/16 :goto_173

    .line 709
    :pswitch_3f  #0x8
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopWaveView()V

    .line 710
    iput v12, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "播放录音失败，请重新录制"

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    goto/16 :goto_34a

    .line 701
    :pswitch_53  #0x7
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopWaveView()V

    .line 702
    iput v12, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "开启录音失败，请重新录制"

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    goto/16 :goto_34a

    .line 782
    :pswitch_67  #0x6
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopWaveView()V

    .line 784
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 785
    iget-object v2, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    invoke-static {v2, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 786
    iget-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const v9, 0x3f4ccccd  # 0.8f

    const/high16 v10, 0x3f800000  # 1.0f

    const-wide/16 v11, 0x15e

    invoke-static/range {v7 .. v12}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 787
    iget-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 788
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 789
    new-instance v2, Lcom/codemao/creativecenter/customview/CmRecordView$11;

    invoke-direct {v2, v6}, Lcom/codemao/creativecenter/customview/CmRecordView$11;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 813
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 815
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->resetStatusToPlay()V

    .line 816
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 817
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_34a

    .line 716
    :pswitch_b0  #0x5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 717
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    invoke-static {v1, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 719
    iget-object v2, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-static {v2, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 720
    iget-object v13, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    const/4 v14, 0x1

    const v15, 0x3f4ccccd  # 0.8f

    const/high16 v16, 0x3f800000  # 1.0f

    const-wide/16 v17, 0x15e

    invoke-static/range {v13 .. v18}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 721
    iget-object v13, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-static/range {v13 .. v18}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 722
    iget-object v5, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x41f00000  # 30.0f

    invoke-static {v13, v14}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-static {v5, v13, v11, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransXAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 724
    iget-object v13, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-static {v13, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 725
    iget-object v15, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    const/16 v16, 0x1

    const v17, 0x3f4ccccd  # 0.8f

    const/high16 v18, 0x3f800000  # 1.0f

    const-wide/16 v19, 0x15e

    invoke-static/range {v15 .. v20}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 726
    iget-object v15, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v20}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 727
    iget-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v14}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v7, v12, v11, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransXAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 730
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 732
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 733
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 734
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    const v2, 0x3f4ccccd  # 0.8f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 735
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 736
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 737
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 738
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 739
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$10;

    invoke-direct {v1, v6}, Lcom/codemao/creativecenter/customview/CmRecordView$10;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 763
    :goto_173
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_sure:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_34a

    .line 775
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_34a

    :pswitch_1a4  #0x4
    const/4 v2, 0x0

    .line 693
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopWaveView()V

    .line 694
    iput v2, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 695
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "录音保存失败，请重新录制"

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 696
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    goto/16 :goto_34a

    .line 630
    :pswitch_1b9  #0x3
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopWaveView()V

    .line 632
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 633
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    invoke-static {v1, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 634
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    invoke-static {v3, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 635
    iget-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const v9, 0x3f4ccccd  # 0.8f

    const/high16 v10, 0x3f800000  # 1.0f

    const-wide/16 v11, 0x15e

    invoke-static/range {v7 .. v12}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 636
    iget-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 639
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 640
    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$9;

    invoke-direct {v1, v6}, Lcom/codemao/creativecenter/customview/CmRecordView$9;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 676
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->tv_count_down:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x43b40000  # 360.0f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000  # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000  # 0.5f

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v3, 0x3e8

    .line 684
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    .line 685
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 686
    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 687
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_save_recode:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_34a

    .line 561
    :pswitch_23a  #0x2
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_24d

    .line 562
    new-instance v7, Lcom/codemao/creativecenter/customview/CmRecordView$7;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x64

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/customview/CmRecordView$7;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;JJ)V

    iput-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 580
    :cond_24d
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 582
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 583
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    invoke-static {v1, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 584
    iget-object v2, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    invoke-static {v2, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 585
    iget-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    const/4 v8, 0x1

    const v9, 0x3f4ccccd  # 0.8f

    const/high16 v10, 0x3f800000  # 1.0f

    const-wide/16 v11, 0x15e

    invoke-static/range {v7 .. v12}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 586
    iget-object v7, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->view_red:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 589
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 590
    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$8;

    invoke-direct {v1, v6}, Lcom/codemao/creativecenter/customview/CmRecordView$8;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 619
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 621
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->tv_count_down:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_34a

    .line 513
    :pswitch_2a1  #0x1
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->getMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 517
    iget-object v1, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    invoke-static {v1, v8, v11, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 518
    iget-object v2, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    const/16 v19, 0x1

    const/high16 v20, 0x3f800000  # 1.0f

    const v21, 0x3f4ccccd  # 0.8f

    const-wide/16 v22, 0x15e

    move-object/from16 v18, v2

    invoke-static/range {v18 .. v23}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 519
    iget-object v4, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    const/16 v19, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v23}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 521
    iget-object v5, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->tv_count_down:Landroid/widget/TextView;

    invoke-static {v5, v11, v8, v9, v10}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v7, 0x64

    .line 522
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 523
    iget-object v9, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->tv_count_down:Landroid/widget/TextView;

    const/4 v10, 0x1

    const v11, 0x3f4ccccd  # 0.8f

    const/high16 v12, 0x3f800000  # 1.0f

    const-wide/16 v13, 0x15e

    invoke-static/range {v9 .. v14}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 524
    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 525
    iget-object v10, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->tv_count_down:Landroid/widget/TextView;

    const/4 v11, 0x0

    const v12, 0x3f4ccccd  # 0.8f

    const/high16 v13, 0x3f800000  # 1.0f

    const-wide/16 v14, 0x15e

    invoke-static/range {v10 .. v15}, Lcom/codemao/creativecenter/utils/AnimUtil;->getScaleAnim(Landroid/view/View;ZFFJ)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 526
    invoke-virtual {v10, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 528
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 529
    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$6;

    invoke-direct {v1, v6}, Lcom/codemao/creativecenter/customview/CmRecordView$6;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 554
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setMaxProgress(I)V

    .line 555
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    .line 556
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34a

    :pswitch_335  #0x0
    const/4 v1, 0x0

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopWaveView()V

    .line 507
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setMaxProgress(I)V

    .line 508
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/CmRecordView;->iv_center:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_record:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_34a
    :goto_34a
    return-void

    nop

    :pswitch_data_34c
    .packed-switch 0x0
        :pswitch_335  #00000000
        :pswitch_2a1  #00000001
        :pswitch_23a  #00000002
        :pswitch_1b9  #00000003
        :pswitch_1a4  #00000004
        :pswitch_b0  #00000005
        :pswitch_67  #00000006
        :pswitch_53  #00000007
        :pswitch_3f  #00000008
        :pswitch_3a  #00000009
        :pswitch_3c  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public clickStart()V
    .registers 3

    .line 974
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    if-eqz v0, :cond_c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    goto :goto_f

    .line 979
    :cond_8
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->rePlay()V

    goto :goto_f

    .line 976
    :cond_c
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->countDown()V

    :goto_f
    return-void
.end method

.method public hasRecordFile()Z
    .registers 3

    .line 484
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->recordPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public isPlayingState()Z
    .registers 3

    .line 488
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 914
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 915
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 916
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_center:I

    if-ne p1, v0, :cond_13

    .line 917
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clickStart()V

    goto :goto_44

    .line 918
    :cond_13
    sget v0, Lcom/codemao/creativecenter/R$id;->view_red:I

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x1

    .line 919
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->clickRed(Z)V

    goto :goto_44

    .line 920
    :cond_1c
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_sure:I

    if-ne p1, v0, :cond_24

    .line 921
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->addSound()V

    goto :goto_44

    .line 922
    :cond_24
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_back:I

    if-ne p1, v0, :cond_44

    const/4 p1, 0x0

    .line 923
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 924
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->dropFile()V

    .line 925
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clearHandler()V

    .line 926
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopTimer()V

    .line 927
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopPlay()V

    .line 928
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    .line 929
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    if-eqz p1, :cond_41

    .line 930
    invoke-interface {p1}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->onReRecord()V

    .line 932
    :cond_41
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clickStart()V

    :cond_44
    :goto_44
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 p1, 0x6

    .line 1001
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 1002
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->title:Landroid/widget/TextView;

    const-string v0, "0s"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clearHandler()V

    .line 1004
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopPlay()V

    .line 1008
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 893
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 894
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clearHandler()V

    .line 895
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_10

    .line 896
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_10
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 1021
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clearHandler()V

    const/16 p1, 0x8

    .line 1022
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 1023
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->isBackground:Z

    return-void
.end method

.method public onPermissionPassed()V
    .registers 2

    const/4 v0, 0x1

    .line 438
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->curState:I

    .line 439
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->playCountDown1()V

    .line 440
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setForWardModel()V

    .line 441
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->updateUI()V

    .line 447
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->registerCallStateListener()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->isBackground:Z

    return-void
.end method

.method public release(Z)V
    .registers 3

    if-nez p1, :cond_5

    .line 1036
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->dropFile()V

    .line 1037
    :cond_5
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopPlay()V

    .line 1039
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->stopTimer()V

    .line 1040
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/RecordHelper;->stopRecordVoice(Z)V

    .line 1041
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmRecordView;->clearHandler()V

    return-void
.end method

.method public setCmRecordListener(Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;)V
    .registers 2

    .line 987
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->cmRecordListener:Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 3

    .line 991
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->parentPath:Ljava/lang/String;

    .line 992
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->uuId:Ljava/lang/String;

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/record/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->uuId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".aac"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView;->recordPath:Ljava/lang/String;

    return-void
.end method
