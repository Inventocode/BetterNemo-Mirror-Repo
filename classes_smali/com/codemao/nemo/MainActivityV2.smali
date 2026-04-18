.class public Lcom/codemao/nemo/MainActivityV2;
.super Lcom/giu/xzz/BaseActivity;
.source "MainActivityV2.java"


# static fields
.field private static defaultChoseIndex:I = -0x1

.field public static isCheckPricayFinish:Z = false


# instance fields
.field adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

.field private discoverF:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

.field private isPad:Z

.field private mNetChangeReceiver:Lcom/codemao/nemo/sdk/update/NetChangeReceiver;

.field private mineFragment:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

.field private old:Z

.field rbDiscover:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rbMine:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rgBottom:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9_Y_u63LLg143h0OelMv4BkyQ78()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/MainActivityV2;->lambda$showEventPop$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lcom/codemao/nemo/MainActivityV2;->old:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/MainActivityV2;)Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/codemao/nemo/MainActivityV2;->discoverF:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/MainActivityV2;)Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/codemao/nemo/MainActivityV2;->mineFragment:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/MainActivityV2;Z)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/codemao/nemo/MainActivityV2;->afterCheckPolicy(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/MainActivityV2;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->checkPushPermission()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/MainActivityV2;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->deleteNotUse()V

    return-void
.end method

.method private afterCheckPolicy(Z)V
    .registers 3

    if-eqz p1, :cond_d

    .line 476
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->rgBottom:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/codemao/nemo/MainActivityV2$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/MainActivityV2$4;-><init>(Lcom/codemao/nemo/MainActivityV2;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 495
    :cond_d
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->checkPushPermission()V

    :goto_10
    return-void
.end method

.method private checkPolicy(Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    .line 427
    sput-boolean v0, Lcom/codemao/nemo/MainActivityV2;->isCheckPricayFinish:Z

    .line 428
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 429
    sget-boolean p1, Lcom/codemao/nemo/http/PolicyUtils;->isTouristAgreePolicy:Z

    if-nez p1, :cond_11

    .line 431
    sput-boolean v2, Lcom/codemao/nemo/MainActivityV2;->isCheckPricayFinish:Z

    goto :goto_13

    .line 447
    :cond_11
    sput-boolean v2, Lcom/codemao/nemo/MainActivityV2;->isCheckPricayFinish:Z

    :goto_13
    return-void

    :cond_14
    if-nez p1, :cond_1a

    .line 453
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->checkPushPermission()V

    return-void

    :cond_1a
    const-string v1, "isNeedShowPolicy"

    .line 456
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 458
    invoke-direct {p0, v2}, Lcom/codemao/nemo/MainActivityV2;->afterCheckPolicy(Z)V

    goto :goto_2e

    .line 460
    :cond_26
    new-instance p1, Lcom/codemao/nemo/MainActivityV2$3;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/MainActivityV2$3;-><init>(Lcom/codemao/nemo/MainActivityV2;)V

    invoke-static {p1}, Lcom/codemao/nemo/http/PolicyUtils;->checkPolicyInMain(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    :goto_2e
    return-void
.end method

.method private checkPushPermission()V
    .registers 1

    .line 268
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->showEventPop()V

    return-void
.end method

.method private deleteAImgsRemain()V
    .registers 2

    .line 640
    new-instance v0, Lcom/codemao/nemo/MainActivityV2$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/MainActivityV2$5;-><init>(Lcom/codemao/nemo/MainActivityV2;)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deleteNotUse()V
    .registers 3

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/covercache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/nemocache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)V

    return-void
.end method

.method private fetchCurViewName()Ljava/lang/String;
    .registers 5

    .line 582
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_1a

    sget v2, Lcom/codemao/nemo/MainActivityV2;->defaultChoseIndex:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1a

    sget v0, Lcom/codemao/nemo/MainActivityV2;->defaultChoseIndex:I

    if-le v0, v1, :cond_1a

    .line 583
    iget-object v2, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1c

    :cond_1a
    const-string v0, ""

    .line 586
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string/jumbo v3, "萌新必看"

    sparse-switch v2, :sswitch_data_a4

    goto :goto_85

    :sswitch_2a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_85

    :cond_31
    const/4 v1, 0x7

    goto :goto_85

    :sswitch_33
    const-string/jumbo v2, "游乐园"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_85

    :cond_3d
    const/4 v1, 0x6

    goto :goto_85

    :sswitch_3f
    const-string/jumbo v2, "课程"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_85

    :cond_49
    const/4 v1, 0x5

    goto :goto_85

    :sswitch_4b
    const-string/jumbo v2, "最新"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_85

    :cond_55
    const/4 v1, 0x4

    goto :goto_85

    :sswitch_57
    const-string/jumbo v2, "更多"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_85

    :cond_61
    const/4 v1, 0x3

    goto :goto_85

    :sswitch_63
    const-string/jumbo v2, "推荐"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_85

    :cond_6d
    const/4 v1, 0x2

    goto :goto_85

    :sswitch_6f
    const-string/jumbo v2, "动态"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_85

    :cond_79
    const/4 v1, 0x1

    goto :goto_85

    :sswitch_7b
    const-string v2, "主题"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto :goto_85

    :cond_84
    const/4 v1, 0x0

    :goto_85
    const-string/jumbo v0, "推荐页"

    packed-switch v1, :pswitch_data_c6

    :pswitch_8b  #0x2
    move-object v3, v0

    goto :goto_a3

    :pswitch_8d  #0x6
    const-string/jumbo v3, "游乐园页"

    goto :goto_a3

    :pswitch_91  #0x5
    const-string/jumbo v3, "教程页"

    goto :goto_a3

    :pswitch_95  #0x4
    const-string/jumbo v3, "最新页"

    goto :goto_a3

    :pswitch_99  #0x3
    const-string/jumbo v3, "更多页"

    goto :goto_a3

    :pswitch_9d  #0x1
    const-string/jumbo v3, "动态页"

    goto :goto_a3

    :pswitch_a1  #0x0
    const-string v3, "主题页"

    :goto_a3
    :pswitch_a3  #0x7
    return-object v3

    :sswitch_data_a4
    .sparse-switch
        0xa11bd -> :sswitch_7b
        0xa6259 -> :sswitch_6f
        0xc94a8 -> :sswitch_63
        0xcd0a6 -> :sswitch_57
        0xcdeb0 -> :sswitch_4b
        0x116dcd -> :sswitch_3f
        0x1a792d5 -> :sswitch_33
        0x3d903a0a -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_a1  #00000000
        :pswitch_9d  #00000001
        :pswitch_8b  #00000002
        :pswitch_99  #00000003
        :pswitch_95  #00000004
        :pswitch_91  #00000005
        :pswitch_8d  #00000006
        :pswitch_a3  #00000007
    .end packed-switch
.end method

.method private initFirstDefaultTab()I
    .registers 7

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const-string/jumbo v1, "推荐"

    const/4 v2, -0x1

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9a

    .line 190
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->isFirstOpenApp:Z

    if-nez v0, :cond_1a

    .line 191
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_9b

    .line 193
    :cond_1a
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const-string/jumbo v3, "课程"

    const-string/jumbo v4, "萌新必看"

    if-eqz v0, :cond_66

    .line 194
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->isFirstLogin:Z

    if-eqz v0, :cond_5f

    .line 195
    iget-boolean v0, p0, Lcom/codemao/nemo/MainActivityV2;->isPad:Z

    if-eqz v0, :cond_36

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_9b

    .line 200
    :cond_36
    sget-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 201
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_4b

    move-object v5, v4

    goto :goto_4c

    :cond_4b
    move-object v5, v3

    .line 202
    :goto_4c
    sput-object v5, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    goto :goto_55

    .line 204
    :cond_4f
    sget-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    :goto_55
    iget-object v5, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    if-eqz v0, :cond_5a

    move-object v3, v4

    :cond_5a
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9b

    .line 209
    :cond_5f
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9b

    .line 212
    :cond_66
    iget-boolean v0, p0, Lcom/codemao/nemo/MainActivityV2;->isPad:Z

    if-eqz v0, :cond_71

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9b

    .line 217
    :cond_71
    sget-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 218
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_86

    move-object v5, v4

    goto :goto_87

    :cond_86
    move-object v5, v3

    .line 219
    :goto_87
    sput-object v5, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    goto :goto_90

    .line 221
    :cond_8a
    sget-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    :goto_90
    iget-object v5, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    if-eqz v0, :cond_95

    move-object v3, v4

    :cond_95
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9b

    :cond_9a
    const/4 v0, -0x1

    :goto_9b
    if-ne v0, v2, :cond_a5

    .line 231
    iget-object v3, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    if-eqz v3, :cond_a5

    .line 232
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_a5
    if-ne v0, v2, :cond_a8

    const/4 v0, 0x0

    :cond_a8
    return v0
.end method

.method private initTab()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    goto :goto_f

    .line 158
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    :goto_f
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const-string/jumbo v1, "游乐园"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1d
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const-string/jumbo v1, "萌新必看"

    const-string/jumbo v2, "课程"

    if-nez v0, :cond_34

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 168
    :cond_34
    sget-object v0, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {v0}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->needShowBeginner()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_41
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_46
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const-string/jumbo v1, "推荐"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const-string v1, "主题"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const-string/jumbo v1, "动态"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const-string/jumbo v1, "最新"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 180
    :cond_6c
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    const-string/jumbo v1, "更多"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_74
    return-void
.end method

.method private static synthetic lambda$showEventPop$0()V
    .registers 1

    .line 421
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->getUserLevelInfo()V

    return-void
.end method

.method private showEventPop()V
    .registers 5

    const/4 v0, 0x1

    .line 416
    sput-boolean v0, Lcom/codemao/nemo/MainActivityV2;->isCheckPricayFinish:Z

    .line 417
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getCurViewName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "推荐页"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/codemao/nemo/MainActivityV2;->discoverF:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getRecommendFragment()Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 418
    iget-object v1, p0, Lcom/codemao/nemo/MainActivityV2;->discoverF:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getRecommendFragment()Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getEventInfo(Z)V

    goto :goto_2f

    .line 420
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    if-eqz v0, :cond_2f

    .line 421
    sget-object v1, Lcom/codemao/nemo/MainActivityV2$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/MainActivityV2$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static startMainActivityV2(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 121
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 122
    invoke-static {p0, v0, v1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startMainActivityV2(Landroid/content/Context;I)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 104
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 106
    invoke-static {p0, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startMainActivityV2(Landroid/content/Context;Z)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 111
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isNeedShowPolicy"

    .line 112
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 113
    invoke-static {p0, v0, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private upDataWithUserInfo()V
    .registers 2

    .line 412
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/MainActivityV2;->checkPolicy(Landroid/content/Intent;)V

    return-void
.end method

.method private updateUserIdToBuggy()V
    .registers 4

    .line 398
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 127
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/MainActivityV2;->isPad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0051

    goto :goto_f

    :cond_c
    const v0, 0x7f0d0050

    :goto_f
    return v0
.end method

.method public getDefaultChoseIndex()I
    .registers 3

    .line 148
    sget v0, Lcom/codemao/nemo/MainActivityV2;->defaultChoseIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 149
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->initFirstDefaultTab()I

    move-result v0

    sput v0, Lcom/codemao/nemo/MainActivityV2;->defaultChoseIndex:I

    .line 151
    :cond_b
    sget v0, Lcom/codemao/nemo/MainActivityV2;->defaultChoseIndex:I

    return v0
.end method

.method public getTabTitles()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->initTab()V

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->titles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    .line 568
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->initTab()V

    .line 569
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->initFirstDefaultTab()I

    move-result v0

    sput v0, Lcom/codemao/nemo/MainActivityV2;->defaultChoseIndex:I

    .line 572
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->discoverF:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    if-eqz v0, :cond_12

    .line 573
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getCurrentViewName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 575
    :cond_12
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->fetchCurViewName()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 633
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 634
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "主页面-点击创作按钮（主页）"

    .line 502
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/codemao/nemo/MainActivityV2;->openMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 300
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 302
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 303
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->deleteAImgsRemain()V

    .line 305
    sget-object v0, Lcom/ljwx/baseapp/util/OtherUtils;->INSTANCE:Lcom/ljwx/baseapp/util/OtherUtils;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/util/OtherUtils;->setDevicePad(Z)V

    .line 306
    iget-boolean v0, p0, Lcom/codemao/nemo/MainActivityV2;->isPad:Z

    if-eqz v0, :cond_27

    .line 307
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->rgBottom:Landroid/widget/RadioGroup;

    const v1, 0x7f08054f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 310
    :cond_27
    invoke-static {}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getInstance()Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->discoverF:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    .line 312
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->mineFragment:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    .line 315
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v0, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    .line 317
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 318
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    new-instance v0, Lcom/codemao/nemo/MainActivityV2$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/MainActivityV2$1;-><init>(Lcom/codemao/nemo/MainActivityV2;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 355
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->rgBottom:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/codemao/nemo/MainActivityV2$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/MainActivityV2$2;-><init>(Lcom/codemao/nemo/MainActivityV2;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 370
    new-instance p1, Lcom/codemao/nemo/sdk/update/NetChangeReceiver;

    invoke-direct {p1}, Lcom/codemao/nemo/sdk/update/NetChangeReceiver;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->mNetChangeReceiver:Lcom/codemao/nemo/sdk/update/NetChangeReceiver;

    .line 371
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->mNetChangeReceiver:Lcom/codemao/nemo/sdk/update/NetChangeReceiver;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080550

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x41f00000  # 30.0f

    .line 376
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080551

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 378
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->rbDiscover:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->rbMine:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/MainApplication;->getOutJumUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_cb

    .line 383
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/MainApplication;->getOutJumUri()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v4, v0}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    .line 384
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/MainApplication;->setOutJumUri(Landroid/net/Uri;)V

    .line 386
    :cond_cb
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/event/MainStartEvent;->obtain()Lcom/codemao/nemo/event/MainStartEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 387
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->upDataWithUserInfo()V

    .line 388
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->updateUserIdToBuggy()V

    .line 389
    sget-object v1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preloadSuccess()Z

    move-result p1

    if-nez p1, :cond_ee

    const-wide/32 v4, 0xea60

    const/4 v6, 0x0

    const-string v3, "KN"

    move-object v2, p0

    .line 390
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->preload(Landroid/content/Context;Ljava/lang/String;JLkotlin/jvm/functions/Function1;)V

    .line 393
    :cond_ee
    sget-object p1, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->showSelectFourteen(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 556
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->mNetChangeReceiver:Lcom/codemao/nemo/sdk/update/NetChangeReceiver;

    if-eqz v0, :cond_e

    .line 558
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_e
    const-string v0, ""

    .line 561
    sput-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    .line 562
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6

    .line 522
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "type"

    const/4 v1, 0x0

    .line 523
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 525
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {p1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 526
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->mineFragment:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->setCurrentItem(I)V

    return-void

    :cond_18
    const/4 v3, 0x2

    if-ne v0, v3, :cond_26

    .line 530
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {p1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 531
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->mineFragment:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->setCurrentItem(I)V

    return-void

    :cond_26
    const/4 v0, -0x1

    const-string v3, "discover_item"

    .line 534
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3f

    .line 536
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {p1, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 537
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->mineFragment:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->setCurrentItem(I)V

    .line 538
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->discoverF:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->setCurrentItem(I)V

    return-void

    :cond_3f
    const-string v0, "workDetail"

    .line 542
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    if-nez v0, :cond_4a

    return-void

    .line 546
    :cond_4a
    iget-object v3, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v3, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 547
    iget-object v2, p0, Lcom/codemao/nemo/MainActivityV2;->mineFragment:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->setCurrentItem(I)V

    const-string v2, "downloadType"

    .line 548
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 549
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/event/DownloadBcmEvent;

    invoke-direct {v3, v0, v1}, Lcom/codemao/nemo/event/DownloadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/codemao/nemo/MainActivityV2;->checkPolicy(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 133
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 134
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/codemao/nemo/util/AppConstants;->SYSTEM_HEIGHT:I

    .line 135
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    .line 137
    sget-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/common/GlobalUtils;->requestUrlList()V

    return-void
.end method

.method public onTabChangeEvent(Lcom/codemao/nemo/event/MainActivityTabChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    if-eqz v0, :cond_c

    .line 626
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getFirstTab()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_c
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 617
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_e

    .line 618
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_e
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 2

    .line 403
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 405
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->initTab()V

    .line 406
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->initFirstDefaultTab()I

    move-result v0

    sput v0, Lcom/codemao/nemo/MainActivityV2;->defaultChoseIndex:I

    .line 407
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->upDataWithUserInfo()V

    .line 408
    invoke-direct {p0}, Lcom/codemao/nemo/MainActivityV2;->updateUserIdToBuggy()V

    return-void
.end method

.method public openMenu()V
    .registers 4

    .line 509
    iget-boolean v0, p0, Lcom/codemao/nemo/MainActivityV2;->old:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 512
    iput-boolean v1, p0, Lcom/codemao/nemo/MainActivityV2;->old:Z

    goto :goto_1c

    .line 514
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 517
    :goto_1c
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
