.class public Lcom/codemao/nemo/util/BcmHelper;
.super Ljava/lang/Object;
.source "BcmHelper.java"


# static fields
.field public static BASE_PATH:Ljava/lang/String; = ""

.field public static USER_DIR:Ljava/lang/String; = ""

.field public static USER_WORKS_PATH:Ljava/lang/String; = ""

.field private static configVO:Lcom/codemao/nemo/bean/ConfigVO;

.field private static localBcmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static localBcmUUID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static totalIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DhYce_g_F_T0p32kIfK_FV2w4RY()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->lambda$deleteUnLoginDirectory$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmNames:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmUUID:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/BcmHelper;->totalIds:Ljava/util/Set;

    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .registers 4

    .line 700
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v1, 0x0

    .line 701
    iput v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    const-string v1, "新的作品"

    const/4 v2, 0x2

    .line 702
    invoke-static {v1, v2}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 703
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 705
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "worksEvent"

    .line 706
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 707
    const-class v0, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 709
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/util/ActivityUtils;->enterBCM()V

    return-void
.end method

.method public static create(Landroid/content/Context;Z)V
    .registers 5

    .line 713
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v1, 0x0

    .line 714
    iput v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    const-string v1, "新的作品"

    const/4 v2, 0x2

    .line 715
    invoke-static {v1, v2}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 716
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 717
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 719
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "worksEvent"

    .line 720
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 721
    const-class v0, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 723
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/util/ActivityUtils;->enterBCM()V

    return-void
.end method

.method public static createCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 10

    .line 737
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v1, 0x0

    .line 738
    iput v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    const-string v1, "新的作品"

    const/4 v2, 0x2

    .line 739
    invoke-static {v1, v2}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 740
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 741
    iput-object p1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    .line 742
    iput-object p2, v0, Lcom/codemao/creativestore/bean/WorksEvent;->keyFrameUrl:Ljava/lang/String;

    .line 743
    iput p3, v0, Lcom/codemao/creativestore/bean/WorksEvent;->progress:I

    .line 744
    iput p4, v0, Lcom/codemao/creativestore/bean/WorksEvent;->videoDuration:I

    .line 745
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "course_id"

    .line 746
    invoke-virtual {p1, p2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "worksEvent"

    .line 747
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 748
    const-class p2, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 749
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 750
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/util/ActivityUtils;->enterBCM()V

    return-void
.end method

.method public static createCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object v0, p0

    .line 754
    new-instance v1, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v2, 0x0

    .line 755
    iput v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    const-string v2, "新的作品"

    const/4 v3, 0x2

    .line 756
    invoke-static {v2, v3}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 757
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    move-object v2, p1

    .line 758
    iput-object v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    move-object v2, p2

    .line 759
    iput-object v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->keyFrameUrl:Ljava/lang/String;

    move v2, p3

    .line 760
    iput v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->progress:I

    move v2, p4

    .line 761
    iput v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->videoDuration:I

    .line 762
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "course_id"

    move-wide/from16 v7, p5

    .line 763
    invoke-virtual {v2, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 764
    new-instance v3, Lcom/codemao/nemo/bean/GoCreateCoursInfo;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object/from16 v6, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p8

    invoke-direct/range {v4 .. v10}, Lcom/codemao/nemo/bean/GoCreateCoursInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v4, "course_info"

    .line 765
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "worksEvent"

    .line 766
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 767
    const-class v1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 769
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->enterBCM()V

    return-void
.end method

.method public static deleteUnLoginDirectory()V
    .registers 1

    .line 238
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/util/BcmHelper$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 4

    .line 661
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 662
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    iput-boolean v1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->isLogin:Z

    const-string v1, "worksEvent"

    .line 663
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 664
    const-class p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 666
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/util/ActivityUtils;->enterBCM()V

    return-void
.end method

.method public static enterModule(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 4

    .line 670
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 671
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    iput-boolean v1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->isLogin:Z

    const-string v1, "worksEvent"

    .line 672
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 673
    const-class p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 675
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/util/ActivityUtils;->enterBCM()V

    return-void
.end method

.method public static enterNeebeeWithOutGuide(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;J)V
    .registers 6

    .line 679
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 680
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    iput-boolean v1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->isLogin:Z

    const-string v1, "worksEvent"

    .line 681
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "course_id"

    .line 682
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 683
    const-class p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 685
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/util/ActivityUtils;->enterBCM()V

    return-void
.end method

.method public static enterNewBee(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;Lcom/codemao/creativestore/bean/InitNewbeeMsg;J)V
    .registers 7

    .line 689
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 690
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    iput-boolean v1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->isLogin:Z

    const-string v1, "worksEvent"

    .line 691
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "course_id"

    .line 692
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "newbeetypewokrid"

    .line 693
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "newbeeGuideList"

    .line 694
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 695
    const-class p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 381
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->BASE_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "nemo_users_db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/codemao/nemo/util/BcmHelper;->BASE_PATH:Ljava/lang/String;

    .line 384
    :cond_24
    sget-object p0, Lcom/codemao/nemo/util/BcmHelper;->BASE_PATH:Ljava/lang/String;

    return-object p0
.end method

.method private static getConfigByEnv(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "test"

    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "test.json"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-class p1, Lcom/codemao/nemo/bean/ConfigVO;

    invoke-static {p0, p1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/bean/ConfigVO;

    sput-object p0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    goto :goto_6b

    :cond_1d
    const-string v0, "dev"

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "dev.json"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-class p1, Lcom/codemao/nemo/bean/ConfigVO;

    invoke-static {p0, p1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/bean/ConfigVO;

    sput-object p0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    goto :goto_6b

    :cond_3a
    const-string v0, "staging"

    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "staging.json"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-class p1, Lcom/codemao/nemo/bean/ConfigVO;

    invoke-static {p0, p1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/bean/ConfigVO;

    sput-object p0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    goto :goto_6b

    .line 466
    :cond_57
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "release.json"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-class p1, Lcom/codemao/nemo/bean/ConfigVO;

    invoke-static {p0, p1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/bean/ConfigVO;

    sput-object p0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    :goto_6b
    return-void
.end method

.method public static getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;
    .registers 4

    .line 427
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    if-nez v0, :cond_50

    .line 437
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "release.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/bean/ConfigVO;

    invoke-static {v0, v1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/ConfigVO;

    sput-object v0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    .line 443
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    if-nez v0, :cond_50

    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->IS_STAGING:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_4a

    if-nez v0, :cond_50

    .line 445
    :try_start_20
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/nemo_env_switch.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;

    invoke-static {v0, v1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;

    .line 446
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/BcmHelper;->getConfigByEnv(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_49} :catch_50

    goto :goto_50

    .line 452
    :catch_4a
    invoke-static {}, Lcom/codemao/nemo/bean/ConfigVO;->getDefault()Lcom/codemao/nemo/bean/ConfigVO;

    move-result-object p0

    sput-object p0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    .line 455
    :catch_50
    :cond_50
    :goto_50
    sget-object p0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    return-object p0
.end method

.method private static getMaxIndex(Ljava/lang/String;)I
    .registers 7

    .line 169
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmNames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5c

    .line 172
    :cond_c
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 175
    array-length v4, v3

    if-lez v4, :cond_13

    .line 176
    aget-object v4, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    .line 178
    :try_start_4e
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 179
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_58} :catch_59

    goto :goto_13

    :catch_59
    nop

    goto :goto_13

    :cond_5b
    return v2

    :cond_5c
    :goto_5c
    return v1
.end method

.method public static getMiaoCode(Ljava/lang/String;Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;)V
    .registers 4

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tiger/nemo/miao-codes?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 641
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/BcmService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    invoke-interface {v0, p0}, Lcom/codemao/nemo/retrofit/api/BcmService;->getMiaoCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 642
    new-instance v0, Lcom/codemao/nemo/util/BcmHelper$3;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/util/BcmHelper$3;-><init>(Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;)V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static getName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 205
    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->getNewFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 207
    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->hasExistFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return-object p0

    .line 210
    :cond_12
    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->getNewFileNameByNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 213
    :goto_18
    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->hasExistFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 214
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_22
    return-object p0
.end method

.method public static getNewFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "-副本(\\d+)?$"

    .line 122
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-string v2, "-副本"

    if-eqz v1, :cond_b2

    const-string v1, "本"

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_32

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v5, v3, v1

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-le v5, v6, :cond_7e

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    const-string v3, "0"

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_62
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7e
    add-int/lit8 v0, v3, -0x1

    .line 144
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9a

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_9a
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNewFileNameByNum(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->getMaxIndex(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    .line 388
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUUID(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 113
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 114
    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_c

    .line 117
    :cond_23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public static getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/nemo/bean/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .line 773
    const-class v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p2, "0"

    .line 776
    :cond_a
    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release"

    .line 778
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 779
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/codemao/nemo/util/StringUtil;->getUploadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/codemao/nemo/retrofit/api/BcmService;->getBucketRelease(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_af

    :cond_3a
    const-string v2, "staging"

    .line 780
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 781
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/codemao/nemo/util/StringUtil;->getUploadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/codemao/nemo/retrofit/api/BcmService;->getBucketStaging(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_af

    :cond_64
    const-string v2, "dev"

    .line 782
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 783
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/codemao/nemo/util/StringUtil;->getUploadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/codemao/nemo/retrofit/api/BcmService;->getBucketDev(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_af

    .line 785
    :cond_8e
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/BcmService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcom/codemao/nemo/util/StringUtil;->getUploadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/codemao/nemo/retrofit/api/BcmService;->getBucketTest(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    :goto_af
    return-object p0
.end method

.method private static hasExistFileName(Ljava/lang/String;)Z
    .registers 4

    .line 192
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static illeagalLogout()V
    .registers 2

    .line 108
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "账号存在违规行为，请重新登录"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 109
    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    return-void
.end method

.method public static initPath()V
    .registers 3

    .line 223
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-nez v0, :cond_e

    .line 225
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->deleteUnLoginDirectory()V

    const-string v0, "unlogin"

    .line 226
    sput-object v0, Lcom/codemao/nemo/util/BcmHelper;->USER_DIR:Ljava/lang/String;

    goto :goto_25

    .line 228
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/BcmHelper;->USER_DIR:Ljava/lang/String;

    .line 230
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/nemo/util/BcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_material"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/nemo/util/BcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_works"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static isEndOf(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/BcmHelper;->isEndOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEndOf(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "."

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deleteUnLoginDirectory$0()V
    .registers 6

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3f

    .line 241
    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    .line 245
    :cond_21
    array-length v1, v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_3f

    aget-object v3, v0, v2

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unlogin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 247
    invoke-static {v3}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static modifyMetaBcmName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "work_id"

    .line 393
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v1, p1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/MetaVO;

    .line 394
    invoke-virtual {p1, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_67

    .line 396
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_4a

    .line 397
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 398
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/CommonUtil;->convertNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 400
    :cond_4a
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 401
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/CommonUtil;->convertNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_67
    :goto_67
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_73} :catch_75

    const/4 p0, 0x1

    return p0

    :catch_75
    move-exception p0

    .line 407
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static moveUnLoginDirToUserDir(Ljava/lang/Long;)V
    .registers 19

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_works"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "unlogin"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21f

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_21f

    :cond_66
    if-eqz v6, :cond_21f

    .line 315
    array-length v0, v6

    if-gtz v0, :cond_6d

    goto/16 :goto_21f

    .line 316
    :cond_6d
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 319
    array-length v0, v6

    const/4 v8, 0x0

    :goto_73
    if-ge v8, v0, :cond_d1

    aget-object v9, v6, v8

    .line 320
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_7d
    if-ge v11, v10, :cond_cc

    aget-object v12, v9, v11

    .line 321
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".userimg"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c7

    .line 324
    :try_start_8d
    const-class v0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {v12, v0}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9a} :catch_be

    move-object/from16 v13, p0

    :try_start_9c
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/codemao/nemo/util/BcmHelper;->resetUnloginLocalStyle(Lcom/codemao/creativestore/bean/UserImgDictVO;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v9, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_bb} :catch_bc

    goto :goto_c4

    :catch_bc
    move-exception v0

    goto :goto_c1

    :catch_be
    move-exception v0

    move-object/from16 v13, p0

    .line 328
    :goto_c1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c4
    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_d4

    :cond_c7
    move-object/from16 v13, p0

    add-int/lit8 v11, v11, 0x1

    goto :goto_7d

    :cond_cc
    move-object/from16 v13, p0

    add-int/lit8 v8, v8, 0x1

    goto :goto_73

    :cond_d1
    move-object/from16 v13, p0

    const/4 v8, 0x0

    .line 334
    :goto_d4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v9, "unLoginFile has been failed to rename!!! "

    const-string v10, "rename unLogin file :"

    if-eqz v0, :cond_1cb

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1cb

    if-eqz v2, :cond_1cb

    array-length v0, v2

    if-lez v0, :cond_1cb

    .line 336
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmNames:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Lcom/codemao/nemo/util/BcmHelper;->upDataBcmNames(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    array-length v4, v6

    const/4 v5, 0x0

    :goto_f4
    if-ge v5, v4, :cond_1c0

    aget-object v11, v6, v5

    .line 339
    array-length v12, v2

    const/4 v14, 0x0

    :goto_fa
    if-ge v14, v12, :cond_190

    aget-object v15, v2, v14

    .line 341
    :try_start_fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".meta"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_122} :catch_14b

    move-object/from16 v16, v2

    :try_start_124
    const-class v2, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v7, v2}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MetaVO;

    .line 343
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_name()Ljava/lang/String;

    move-result-object v7
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_130} :catch_149

    move/from16 v17, v4

    const/4 v4, 0x2

    :try_start_133
    invoke-static {v7, v4}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 344
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_146} :catch_147

    goto :goto_153

    :catch_147
    move-exception v0

    goto :goto_150

    :catch_149
    move-exception v0

    goto :goto_14e

    :catch_14b
    move-exception v0

    move-object/from16 v16, v2

    :goto_14e
    move/from16 v17, v4

    .line 346
    :goto_150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    :goto_153
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 350
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->getUUID(Ljava/util/List;)I

    move-result v0

    .line 351
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 353
    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b8

    :cond_188
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    move/from16 v4, v17

    goto/16 :goto_fa

    :cond_190
    move-object/from16 v16, v2

    move/from16 v17, v4

    .line 358
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 360
    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b8
    :goto_1b8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    move/from16 v4, v17

    goto/16 :goto_f4

    :cond_1c0
    if-eqz v8, :cond_1c5

    .line 364
    invoke-static/range {p0 .. p0}, Lcom/codemao/nemo/util/BcmHelper;->moveUnloginStyleToUserDir(Ljava/lang/Long;)V

    .line 366
    :cond_1c5
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_21f

    .line 368
    :cond_1cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_216

    invoke-static {v2}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 373
    :cond_216
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_21f

    .line 375
    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21f
    :goto_21f
    return-void
.end method

.method public static moveUnloginStyleToUserDir(Ljava/lang/Long;)V
    .registers 8

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "unlogin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_material"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 291
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_56

    return-void

    .line 295
    :cond_56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_64

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 299
    :cond_64
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v2, :cond_8f

    aget-object v4, v0, v3

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_8f
    return-void
.end method

.method public static needUpgradeBcm(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "nemo_version_info_rec"

    .line 512
    invoke-static {v0}, Lcom/codemao/nemo/util/SprefUtil;->obtain(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_db_version"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 513
    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;

    .line 514
    sget-object p0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/ConfigVO;->getUser_db_version()Ljava/lang/String;

    move-result-object p0

    .line 515
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    return v2

    .line 518
    :cond_27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt v0, p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v2, 0x1

    :goto_33
    return v2
.end method

.method public static resetUnloginLocalStyle(Lcom/codemao/creativestore/bean/UserImgDictVO;Ljava/lang/String;)V
    .registers 5

    .line 281
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unlogin"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/ImgDictVO;->setPath(Ljava/lang/String;)V

    goto :goto_c

    :cond_42
    return-void
.end method

.method public static setConfigVO(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 472
    :try_start_0
    new-instance v0, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;-><init>()V

    .line 473
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/NemoEnvSwitchVO;->setEnv(Ljava/lang/String;)V

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/nemo_env_switch.json"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    const/4 p0, 0x1

    return p0

    :catch_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static showDownloadAppDialog(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3

    .line 482
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/codemao/nemo/util/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_40

    .line 483
    new-instance p0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string p1, "这次算了"

    .line 484
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p0

    const-string p1, "火速更新"

    .line 485
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p0

    const-string p1, ""

    .line 486
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p0

    const-string p1, "当前App版本低于作品版本，无法直接修改，请更新App后再试"

    .line 487
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p0

    .line 488
    new-instance p1, Lcom/codemao/nemo/util/BcmHelper$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/util/BcmHelper$1;-><init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 496
    new-instance p1, Lcom/codemao/nemo/util/BcmHelper$2;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/util/BcmHelper$2;-><init>(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 503
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public static upDataBcmNames(Ljava/lang/Long;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "user_works"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_85

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_85

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_85

    .line 266
    array-length v2, p0

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_85

    aget-object v4, p0, v3

    .line 268
    :try_start_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".meta"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v5, v4}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/MetaVO;

    .line 270
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception v4

    .line 272
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_85
    return-object v0
.end method

.method public static upgradeBcm(Landroid/content/Context;)V
    .registers 33

    const-string v1, ".meta"

    const-string v2, ".cover"

    const-string v3, ".bcm"

    const-string v4, ".userimg"

    .line 535
    sget-object v0, Lcom/codemao/nemo/util/BcmHelper;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getUser_db_version()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static/range {p0 .. p0}, Lcom/codemao/nemo/util/BcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 538
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_3b

    return-void

    .line 543
    :cond_3b
    array-length v9, v8

    const/4 v11, 0x0

    :goto_3d
    if-ge v11, v9, :cond_3e7

    aget-object v12, v8, v11

    .line 544
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3cb

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3cb

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3cb

    .line 545
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "user_works"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "user_material"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v17, v8

    const-string v8, ".json"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v18, v9

    .line 549
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    .line 554
    :try_start_c1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 555
    const-class v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO;

    invoke-static {v8, v0}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cd} :catch_100

    move-object/from16 v20, v6

    :try_start_cf
    move-object v6, v0

    check-cast v6, Lcom/codemao/creativestore/bean/BcmUpgradeVO;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_f4

    .line 556
    :try_start_d2
    iget-boolean v0, v6, Lcom/codemao/creativestore/bean/BcmUpgradeVO;->total_upgrade_status:Z

    if-eqz v0, :cond_e0

    .line 557
    invoke-static {v12}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d9} :catch_ee

    move-object/from16 v31, v3

    move/from16 v21, v5

    move-object v5, v7

    goto/16 :goto_3d6

    :cond_e0
    move/from16 v21, v5

    .line 560
    :try_start_e2
    iget-object v5, v6, Lcom/codemao/creativestore/bean/BcmUpgradeVO;->works:Ljava/util/HashMap;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e4} :catch_ec

    .line 561
    :try_start_e4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e9} :catch_ea

    goto :goto_116

    :catch_ea
    move-exception v0

    goto :goto_108

    :catch_ec
    move-exception v0

    goto :goto_f1

    :catch_ee
    move-exception v0

    move/from16 v21, v5

    :goto_f1
    move-object/from16 v5, v19

    goto :goto_108

    :catch_f4
    move-exception v0

    move/from16 v21, v5

    goto :goto_105

    :cond_f8
    move/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v0, v19

    move-object v5, v0

    goto :goto_118

    :catch_100
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v20, v6

    :goto_105
    move-object/from16 v5, v19

    move-object v6, v5

    .line 564
    :goto_108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    invoke-static {v9}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 566
    invoke-static {v15}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 567
    invoke-static/range {v16 .. v16}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    move-object/from16 v0, v19

    :goto_116
    move-object/from16 v19, v6

    .line 569
    :goto_118
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move-object/from16 v16, v5

    .line 570
    array-length v5, v6

    move/from16 v22, v11

    move-object/from16 v23, v19

    const/4 v11, 0x0

    move-object/from16 v19, v0

    :goto_126
    if-ge v11, v5, :cond_370

    aget-object v0, v6, v11

    .line 571
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v24

    if-eqz v24, :cond_34c

    move/from16 v24, v5

    const-string v5, "bcm"

    invoke-static {v0, v5}, Lcom/codemao/nemo/util/BcmHelper;->isEndOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_349

    .line 574
    :try_start_13a
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13e} :catch_32e

    if-nez v5, :cond_1aa

    .line 575
    :try_start_140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_145} :catch_19a

    move-object/from16 v25, v5

    .line 576
    :try_start_147
    new-instance v5, Lcom/codemao/creativestore/bean/BcmUpgradeVO;

    invoke-direct {v5}, Lcom/codemao/creativestore/bean/BcmUpgradeVO;-><init>()V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14c} :catch_184

    move-object/from16 v26, v6

    .line 577
    :try_start_14e
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_153} :catch_176

    move/from16 v27, v13

    const/4 v13, 0x0

    .line 578
    :try_start_156
    iput-boolean v13, v5, Lcom/codemao/creativestore/bean/BcmUpgradeVO;->total_upgrade_status:Z

    .line 579
    iput-object v6, v5, Lcom/codemao/creativestore/bean/BcmUpgradeVO;->works:Ljava/util/HashMap;

    .line 580
    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v13, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_166} :catch_16b

    move-object v13, v6

    move-object v6, v5

    move-object/from16 v5, v25

    goto :goto_1b4

    :catch_16b
    move-object/from16 v31, v3

    move-object v0, v5

    move-object v13, v6

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    goto :goto_194

    :catch_176
    move/from16 v27, v13

    move-object/from16 v31, v3

    move-object v0, v5

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    move-object/from16 v13, v16

    goto :goto_194

    :catch_184
    move-object/from16 v26, v6

    move/from16 v27, v13

    move-object/from16 v31, v3

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    move-object/from16 v13, v16

    move-object/from16 v0, v23

    :goto_194
    move-object/from16 v16, v25

    move-object/from16 v25, v7

    goto/16 :goto_342

    :catch_19a
    move-object/from16 v26, v6

    move/from16 v27, v13

    move-object/from16 v31, v3

    move-object/from16 v25, v7

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    goto/16 :goto_33c

    :cond_1aa
    move-object/from16 v26, v6

    move/from16 v27, v13

    move-object/from16 v13, v16

    move-object/from16 v5, v19

    move-object/from16 v6, v23

    .line 582
    :goto_1b4
    :try_start_1b4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b8} :catch_320

    move-object/from16 v25, v7

    :try_start_1ba
    invoke-static/range {v16 .. v16}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 583
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1c2} :catch_31b

    move-object/from16 v28, v10

    if-eqz v16, :cond_1f7

    :try_start_1c6
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;

    iget v10, v10, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;->upgrade_status:I
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1d0} :catch_1ec

    move-object/from16 v29, v12

    const/4 v12, 0x3

    if-ne v10, v12, :cond_1f9

    .line 584
    :try_start_1d5
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;

    iget v0, v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;->uuid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1e4} :catch_1ee

    move-object/from16 v31, v3

    move-object/from16 v16, v5

    move-object/from16 v30, v9

    goto/16 :goto_30f

    :catch_1ec
    move-object/from16 v29, v12

    :catch_1ee
    move-object/from16 v31, v3

    move-object/from16 v16, v5

    move-object v0, v6

    move-object/from16 v30, v9

    goto/16 :goto_342

    :cond_1f7
    move-object/from16 v29, v12

    .line 587
    :cond_1f9
    :try_start_1f9
    invoke-static {v5}, Lcom/codemao/nemo/util/BcmHelper;->getUUID(Ljava/util/List;)I

    move-result v10

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_21d} :catch_314

    move-object/from16 v16, v5

    .line 592
    :try_start_21f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_22e} :catch_2f2
    .catchall {:try_start_21f .. :try_end_22e} :catchall_2ec

    move-object/from16 v30, v9

    :try_start_230
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_23f} :catch_2e8
    .catchall {:try_start_230 .. :try_end_23f} :catchall_2e4

    move-object/from16 v31, v3

    const/4 v3, 0x1

    :try_start_242
    invoke-static {v5, v9, v3}, Lcom/giu/xzz/utils/FileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-static {v3, v5, v9}, Lcom/giu/xzz/utils/FileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/codemao/nemo/util/BcmHelper;->modifyMetaBcmName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 595
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2c4

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lcom/giu/xzz/utils/FileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_2c4} :catch_2e2
    .catchall {:try_start_242 .. :try_end_2c4} :catchall_312

    .line 608
    :cond_2c4
    :try_start_2c4
    new-instance v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;-><init>()V

    .line 609
    iput-object v7, v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;->old_file_name:Ljava/lang/String;

    .line 610
    iput-object v12, v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;->new_file_name:Ljava/lang/String;

    const/4 v3, 0x3

    .line 611
    iput v3, v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;->upgrade_status:I

    .line 612
    iput v10, v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;->uuid:I

    .line 613
    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_2e1} :catch_32c

    goto :goto_30f

    :catch_2e2
    move-exception v0

    goto :goto_2f7

    :catchall_2e4
    move-exception v0

    move-object/from16 v31, v3

    goto :goto_313

    :catch_2e8
    move-exception v0

    move-object/from16 v31, v3

    goto :goto_2f7

    :catchall_2ec
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v30, v9

    goto :goto_313

    :catch_2f2
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v30, v9

    .line 599
    :goto_2f7
    :try_start_2f7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2fa
    .catchall {:try_start_2f7 .. :try_end_2fa} :catchall_312

    .line 604
    :try_start_2fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    :goto_30f
    move-object/from16 v23, v6

    goto :goto_344

    :catchall_312
    move-exception v0

    .line 607
    :goto_313
    throw v0
    :try_end_314
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_314} :catch_32c

    :catch_314
    move-object/from16 v31, v3

    move-object/from16 v16, v5

    move-object/from16 v30, v9

    goto :goto_32c

    :catch_31b
    move-object/from16 v31, v3

    move-object/from16 v16, v5

    goto :goto_326

    :catch_320
    move-object/from16 v31, v3

    move-object/from16 v16, v5

    move-object/from16 v25, v7

    :goto_326
    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    :catch_32c
    :goto_32c
    move-object v0, v6

    goto :goto_342

    :catch_32e
    move-object/from16 v31, v3

    move-object/from16 v26, v6

    move-object/from16 v25, v7

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    move/from16 v27, v13

    :goto_33c
    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v0, v23

    :goto_342
    move-object/from16 v23, v0

    :goto_344
    move-object/from16 v19, v16

    move-object/from16 v16, v13

    goto :goto_35c

    :cond_349
    move-object/from16 v31, v3

    goto :goto_350

    :cond_34c
    move-object/from16 v31, v3

    move/from16 v24, v5

    :goto_350
    move-object/from16 v26, v6

    move-object/from16 v25, v7

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    move/from16 v27, v13

    :goto_35c
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    move/from16 v13, v27

    move-object/from16 v10, v28

    move-object/from16 v12, v29

    move-object/from16 v9, v30

    move-object/from16 v3, v31

    goto/16 :goto_126

    :cond_370
    move-object/from16 v31, v3

    move-object/from16 v25, v7

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v12

    move/from16 v27, v13

    .line 623
    :try_start_37c
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c1

    .line 624
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v28

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_396
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_396} :catch_3c4

    move-object/from16 v5, v25

    :try_start_398
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v27

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/giu/xzz/utils/FileUtil;->move(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    const/4 v3, 0x1

    .line 626
    iput-boolean v3, v0, Lcom/codemao/creativestore/bean/BcmUpgradeVO;->total_upgrade_status:Z

    .line 627
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/giu/xzz/utils/FileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static/range {v29 .. v29}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_3be
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3be} :catch_3bf

    goto :goto_3d8

    :catch_3bf
    move-exception v0

    goto :goto_3c7

    :cond_3c1
    move-object/from16 v5, v25

    goto :goto_3d8

    :catch_3c4
    move-exception v0

    move-object/from16 v5, v25

    .line 631
    :goto_3c7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d8

    :cond_3cb
    move-object/from16 v31, v3

    move/from16 v21, v5

    move-object/from16 v20, v6

    move-object v5, v7

    move-object/from16 v17, v8

    move/from16 v18, v9

    :goto_3d6
    move/from16 v22, v11

    :goto_3d8
    add-int/lit8 v11, v22, 0x1

    move-object v7, v5

    move-object/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v6, v20

    move/from16 v5, v21

    move-object/from16 v3, v31

    goto/16 :goto_3d

    :cond_3e7
    move/from16 v21, v5

    move-object/from16 v20, v6

    const-string v0, "nemo_version_info_rec"

    .line 635
    invoke-static {v0}, Lcom/codemao/nemo/util/SprefUtil;->obtain(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_db_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
