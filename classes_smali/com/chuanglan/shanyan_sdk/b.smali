.class public Lcom/chuanglan/shanyan_sdk/b;
.super Ljava/lang/Object;


# static fields
.field public static V:Ljava/lang/String; = "https://sy.cl2009.com//flash/accountInit/v3"

.field public static X:Ljava/lang/String; = "https://sy.cl2009.com//flash/accountInit/v4"

.field public static Z:Z = false

.field public static aA:Ljava/lang/String; = null

.field public static aB:Ljava/lang/String; = null

.field public static aG:Z = false

.field public static aH:Z = false

.field public static aI:Z = false

.field public static aJ:Z = false

.field public static aa:Z = false

.field public static ab:J

.field public static ac:Z

.field public static ad:I

.field public static ae:J

.field public static volatile af:J

.field public static ag:J

.field public static ah:J

.field public static ai:J

.field public static aj:J

.field public static ak:J

.field public static al:Lcom/chuanglan/shanyan_sdk/listener/OnClickPrivacyListener;

.field public static am:Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;

.field public static an:I

.field public static ao:Z

.field public static ap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static aq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static ar:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static as:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static at:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static au:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static av:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static aw:Ljava/lang/String;

.field public static ax:Ljava/lang/String;

.field public static ay:Ljava/lang/String;

.field public static az:Ljava/lang/String;

.field public static x:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/chuanglan/shanyan_sdk/b;->ab:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->ac:Z

    const/4 v1, 0x4

    sput v1, Lcom/chuanglan/shanyan_sdk/b;->ad:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/chuanglan/shanyan_sdk/b;->ae:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/chuanglan/shanyan_sdk/b;->af:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/chuanglan/shanyan_sdk/b;->ah:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/chuanglan/shanyan_sdk/b;->ai:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/chuanglan/shanyan_sdk/b;->aj:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/chuanglan/shanyan_sdk/b;->ak:J

    const/4 v1, 0x0

    sput v1, Lcom/chuanglan/shanyan_sdk/b;->an:I

    sput-boolean v1, Lcom/chuanglan/shanyan_sdk/b;->ao:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/b;->ar:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/b;->as:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/b;->at:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/b;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Lcom/chuanglan/shanyan_sdk/b;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "/jm_i/"

    sput-object v1, Lcom/chuanglan/shanyan_sdk/b;->aw:Ljava/lang/String;

    const-string v1, "/jm_i2/"

    sput-object v1, Lcom/chuanglan/shanyan_sdk/b;->ax:Ljava/lang/String;

    const-string v1, "/jm_m/"

    sput-object v1, Lcom/chuanglan/shanyan_sdk/b;->ay:Ljava/lang/String;

    const-string v1, "i_"

    sput-object v1, Lcom/chuanglan/shanyan_sdk/b;->az:Ljava/lang/String;

    const-string v1, "i2_"

    sput-object v1, Lcom/chuanglan/shanyan_sdk/b;->aA:Ljava/lang/String;

    const-string v1, "m_"

    sput-object v1, Lcom/chuanglan/shanyan_sdk/b;->aB:Ljava/lang/String;

    sput-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aG:Z

    sput-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aH:Z

    sput-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aI:Z

    sput-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aJ:Z

    return-void
.end method
