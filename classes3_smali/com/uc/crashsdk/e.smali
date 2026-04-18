.class public Lcom/uc/crashsdk/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/crashsdk/e$c;,
        Lcom/uc/crashsdk/e$d;,
        Lcom/uc/crashsdk/e$b;,
        Lcom/uc/crashsdk/e$a;
    }
.end annotation


# static fields
.field private static A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Ljava/lang/String;

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I

.field private static H:I

.field private static I:I

.field private static J:Ljava/lang/String;

.field private static K:Z

.field private static L:Z

.field private static M:I

.field private static N:I

.field private static O:Z

.field private static P:Lcom/uc/crashsdk/a/e;

.field private static Q:Lcom/uc/crashsdk/e$c;

.field private static R:Z

.field private static final S:Lcom/uc/crashsdk/a/e;

.field private static T:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static U:Ljava/lang/Throwable;

.field private static V:Z

.field private static W:Z

.field private static X:Ljava/lang/Runnable;

.field private static final Y:Ljava/lang/Object;

.field private static Z:I

.field static final synthetic a:Z

.field private static aa:Ljava/lang/Runnable;

.field private static final ab:Ljava/lang/Object;

.field private static ac:Z

.field private static ad:Landroid/os/ParcelFileDescriptor;

.field private static ae:Z

.field private static af:Z

.field private static b:J

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z

.field private static f:J

.field private static g:J

.field private static h:Z

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/lang/Object;

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:I

.field private static t:Ljava/lang/String;

.field private static u:Z

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static final y:Ljava/lang/Object;

.field private static final z:Ljava/lang/Object;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 59
    const-class v0, Lcom/uc/crashsdk/e;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->a:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    sput-boolean v2, Lcom/uc/crashsdk/e;->d:Z

    const-wide/16 v3, 0x0

    .line 113
    sput-wide v3, Lcom/uc/crashsdk/e;->f:J

    const-wide/16 v3, -0x1

    .line 140
    sput-wide v3, Lcom/uc/crashsdk/e;->g:J

    .line 149
    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, ""

    .line 702
    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 786
    sput-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    .line 787
    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    .line 1585
    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    .line 2246
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    .line 2346
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->o:Ljava/lang/Object;

    .line 2646
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    .line 2768
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    .line 2909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    .line 2910
    sput v2, Lcom/uc/crashsdk/e;->s:I

    .line 2911
    sput-object v0, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 2913
    sput-boolean v2, Lcom/uc/crashsdk/e;->u:Z

    .line 2914
    sput-object v0, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    .line 3077
    sput-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 3078
    sput-object v0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    .line 3080
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    .line 3107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    .line 3117
    sput-object v0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    .line 3337
    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3420
    sput v1, Lcom/uc/crashsdk/e;->C:I

    .line 3421
    sput v1, Lcom/uc/crashsdk/e;->D:I

    .line 3422
    sput v1, Lcom/uc/crashsdk/e;->E:I

    .line 3423
    sput v1, Lcom/uc/crashsdk/e;->F:I

    .line 3424
    sput v1, Lcom/uc/crashsdk/e;->G:I

    .line 3425
    sput v1, Lcom/uc/crashsdk/e;->H:I

    .line 3426
    sput v1, Lcom/uc/crashsdk/e;->I:I

    const-string v1, "?"

    .line 3427
    sput-object v1, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    .line 3428
    sput-boolean v2, Lcom/uc/crashsdk/e;->K:Z

    .line 3431
    sput-boolean v2, Lcom/uc/crashsdk/e;->L:Z

    .line 3432
    sput v2, Lcom/uc/crashsdk/e;->M:I

    .line 3550
    sput v2, Lcom/uc/crashsdk/e;->N:I

    .line 3552
    sput-boolean v2, Lcom/uc/crashsdk/e;->O:Z

    .line 3702
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x195

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    .line 3733
    new-instance v1, Lcom/uc/crashsdk/e$c;

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    sput-object v1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    .line 3734
    sput-boolean v2, Lcom/uc/crashsdk/e;->R:Z

    .line 3763
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x19c

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->S:Lcom/uc/crashsdk/a/e;

    .line 3796
    sput-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3816
    sput-object v0, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    .line 3817
    sput-boolean v2, Lcom/uc/crashsdk/e;->V:Z

    .line 4053
    sput-boolean v2, Lcom/uc/crashsdk/e;->W:Z

    .line 4054
    sput-object v0, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    .line 4055
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    const/16 v1, 0x65

    .line 4057
    sput v1, Lcom/uc/crashsdk/e;->Z:I

    .line 4111
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x197

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    .line 4325
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->ab:Ljava/lang/Object;

    .line 4326
    sput-boolean v2, Lcom/uc/crashsdk/e;->ac:Z

    .line 4559
    sput-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    .line 4560
    sput-boolean v2, Lcom/uc/crashsdk/e;->ae:Z

    .line 4581
    sput-boolean v2, Lcom/uc/crashsdk/e;->af:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    .line 76
    :try_start_a
    invoke-direct {p0}, Lcom/uc/crashsdk/e;->L()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    .line 77
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static A()V
    .registers 4

    .line 4329
    sget-boolean v0, Lcom/uc/crashsdk/e;->ac:Z

    if-eqz v0, :cond_5

    return-void

    .line 4332
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 4335
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x198

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method static B()V
    .registers 4

    .line 4435
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x199

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x1b58

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static C()V
    .registers 12

    .line 4514
    invoke-static {}, Lcom/uc/crashsdk/g;->L()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    if-eq v0, v2, :cond_13

    if-ne v0, v1, :cond_f

    goto :goto_13

    :cond_f
    if-ne v0, v3, :cond_43

    :cond_11
    const/4 v3, 0x0

    goto :goto_43

    .line 4518
    :cond_13
    :goto_13
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_43

    const/16 v6, 0x19

    if-gt v5, v6, :cond_43

    if-nez v0, :cond_21

    const/4 v5, 0x0

    goto :goto_22

    :cond_21
    const/4 v5, 0x1

    :goto_22
    const-wide/16 v6, 0x0

    if-ne v0, v2, :cond_34

    .line 4523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    cmp-long v2, v8, v6

    if-nez v2, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :cond_34
    :goto_34
    if-ne v0, v1, :cond_42

    .line 4527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3

    rem-long/2addr v0, v8

    cmp-long v2, v0, v6

    if-nez v2, :cond_11

    goto :goto_43

    :cond_42
    move v3, v5

    :cond_43
    :goto_43
    if-nez v3, :cond_4c

    const-string v0, "crashsdk"

    const-string v1, "SIG 3 is disabled by settings"

    .line 4535
    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4540
    :cond_4c
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    .line 4543
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_68

    if-eqz v3, :cond_68

    const/4 v1, 0x2

    .line 4548
    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x19d

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    goto :goto_69

    :cond_68
    move v4, v3

    :goto_69
    const/4 v1, 0x7

    int-to-long v2, v0

    const/4 v0, 0x0

    .line 4552
    invoke-static {v1, v2, v3, v0, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    if-eqz v4, :cond_76

    const/16 v0, 0x8

    .line 4555
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_76
    return-void
.end method

.method public static D()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 4563
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "crashsdk"

    const-string v2, "Crash so is not loaded!"

    .line 4564
    invoke-static {v0, v2}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4568
    :cond_d
    sget-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    const/16 v0, 0xe

    .line 4572
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1d

    return-object v1

    .line 4576
    :cond_1d
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    .line 4577
    sput-boolean v1, Lcom/uc/crashsdk/e;->ae:Z

    return-object v0
.end method

.method public static E()Z
    .registers 1

    .line 4608
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    return v0
.end method

.method public static F()V
    .registers 6

    .line 4612
    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v0

    .line 4613
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4614
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_4e

    .line 4618
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 4620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ucebu can not list folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return-void

    .line 4624
    :cond_2e
    array-length v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v0, :cond_4e

    aget-object v4, v1, v3

    .line 4625
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 4626
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ucebu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 4629
    invoke-static {v2, v2}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    return-void

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_4e
    :goto_4e
    return-void
.end method

.method static synthetic G()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    return v0
.end method

.method static synthetic H()Z
    .registers 1

    .line 59
    invoke-static {}, Lcom/uc/crashsdk/e;->N()Z

    move-result v0

    return v0
.end method

.method static synthetic I()I
    .registers 1

    .line 59
    sget v0, Lcom/uc/crashsdk/e;->M:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method static synthetic J()V
    .registers 2

    .line 59
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/uc/crashsdk/e;->X()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x7d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->Y()V

    return-void
.end method

.method static synthetic K()I
    .registers 1

    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method private L()V
    .registers 5

    .line 87
    invoke-static {}, Lcom/uc/crashsdk/g;->G()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    .line 90
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/dev/null"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_16
    move-exception v0

    .line 92
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_1a
    return-void
.end method

.method private M()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;

    .line 101
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_6

    .line 103
    :cond_16
    iget-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static N()Z
    .registers 1

    .line 107
    invoke-static {}, Lcom/uc/crashsdk/g;->N()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 110
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/e;->a()Z

    move-result v0

    return v0
.end method

.method private static O()Ljava/lang/String;
    .registers 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static P()Ljava/lang/String;
    .registers 1

    .line 315
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "fg"

    return-object v0

    :cond_9
    const-string v0, "bg"

    return-object v0
.end method

.method private static Q()[B
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x400

    :cond_3
    :goto_3
    if-nez v0, :cond_10

    if-lez v1, :cond_10

    .line 336
    :try_start_7
    new-array v0, v1, [B
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a

    goto :goto_3

    .line 339
    :catchall_a
    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    :cond_10
    return-object v0
.end method

.method private static R()Ljava/lang/String;
    .registers 1

    .line 479
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_d

    const-string v0, "ucebujava"

    return-object v0

    :cond_d
    const-string v0, "java"

    return-object v0
.end method

.method private static S()V
    .registers 9

    const-string v0, "-"

    .line 808
    :try_start_2
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v1

    .line 809
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_a
    const/4 v2, 0x0

    .line 816
    :try_start_b
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_65

    .line 817
    :try_start_17
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_60

    const/4 v2, 0x0

    .line 820
    :cond_1f
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5a

    const-string v6, "Hardware"

    .line 821
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_5e

    const-string v7, ":"

    if-eqz v6, :cond_40

    .line 822
    :try_start_2f
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 823
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_40
    const-string v6, "Processor"

    .line 825
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 826
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 827
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_2f .. :try_end_56} :catchall_5e

    goto :goto_3d

    :cond_57
    :goto_57
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1f

    .line 831
    :cond_5a
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_6f

    :catchall_5e
    move-exception v2

    goto :goto_69

    :catchall_60
    move-exception v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_69

    :catchall_65
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    .line 834
    :goto_69
    :try_start_69
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_77

    .line 837
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 838
    :goto_6f
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 841
    sput-object v1, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    .line 842
    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    return-void

    :catchall_77
    move-exception v0

    .line 837
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 838
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static T()Ljava/lang/String;
    .registers 2

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static U()Z
    .registers 2

    .line 3491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static V()V
    .registers 1

    .line 3543
    sget-boolean v0, Lcom/uc/crashsdk/e;->O:Z

    if-nez v0, :cond_15

    .line 3544
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x12

    .line 3545
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_15
    return-void
.end method

.method private static W()V
    .registers 4

    .line 3591
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19e

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method private static X()Ljava/lang/StringBuilder;
    .registers 9

    const-string v0, "\n"

    .line 3610
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->F:I
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_d9

    const-string v3, " (Unknown)"

    const-string v4, " (?)"

    packed-switch v2, :pswitch_data_e0

    move-object v2, v4

    goto :goto_3f

    :pswitch_2c  #0x7
    :try_start_2c
    const-string v2, " (Cold)"

    goto :goto_3f

    :pswitch_2f  #0x6
    const-string v2, " (Unspecified failure)"

    goto :goto_3f

    :pswitch_32  #0x5
    const-string v2, " (Over voltage)"

    goto :goto_3f

    :pswitch_35  #0x4
    const-string v2, " (Dead)"

    goto :goto_3f

    :pswitch_38  #0x3
    const-string v2, " (Overheat)"

    goto :goto_3f

    :pswitch_3b  #0x2
    const-string v2, " (Good)"

    goto :goto_3f

    :pswitch_3e  #0x1
    move-object v2, v3

    :goto_3f
    const-string v5, "health: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/uc/crashsdk/e;->F:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->G:I

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_67

    if-eq v2, v7, :cond_64

    if-eq v2, v6, :cond_61

    if-eq v2, v5, :cond_5e

    move-object v2, v4

    goto :goto_69

    :cond_5e
    const-string v2, " (Wireless)"

    goto :goto_69

    :cond_61
    const-string v2, " (USB port)"

    goto :goto_69

    :cond_64
    const-string v2, " (AC charger)"

    goto :goto_69

    :cond_67
    const-string v2, " (None)"

    :goto_69
    const-string v8, "pluged: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/uc/crashsdk/e;->G:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->H:I

    if-eq v2, v7, :cond_94

    if-eq v2, v6, :cond_92

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8f

    if-eq v2, v5, :cond_8c

    const/4 v3, 0x5

    if-eq v2, v3, :cond_89

    move-object v3, v4

    goto :goto_94

    :cond_89
    const-string v3, " (Full)"

    goto :goto_94

    :cond_8c
    const-string v3, " (Not charging)"

    goto :goto_94

    :cond_8f
    const-string v3, " (Discharging)"

    goto :goto_94

    :cond_92
    const-string v3, " (Charging)"

    :cond_94
    :goto_94
    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "battery low: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/uc/crashsdk/e;->K:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d8
    .catchall {:try_start_2c .. :try_end_d8} :catchall_d9

    return-object v1

    :catchall_d9
    move-exception v0

    .line 3611
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_2f  #00000006
        :pswitch_2c  #00000007
    .end packed-switch
.end method

.method private static Y()V
    .registers 4

    .line 3706
    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 3708
    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    .line 3709
    sget-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3710
    sget-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method private static Z()Z
    .registers 1

    .line 3824
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1473
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return v0

    .line 1479
    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found or decode failed!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1484
    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_65

    add-int/lit8 v2, p2, 0x20

    if-le p1, v2, :cond_29

    goto :goto_2a

    :cond_29
    move p2, p1

    :goto_2a
    const-string p1, "UTF-8"

    if-lez p2, :cond_3e

    .line 1490
    :try_start_2e
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    const-string v2, "\n"

    .line 1491
    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1494
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_6a

    .line 1495
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(truncated %d bytes)\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1496
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1495
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1495
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_61
    .catchall {:try_start_2e .. :try_end_61} :catchall_62

    goto :goto_6a

    :catchall_62
    move-exception p1

    move v0, p2

    goto :goto_66

    :catchall_65
    move-exception p1

    .line 1498
    :goto_66
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    move p2, v0

    .line 1502
    :cond_6a
    :goto_6a
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return p2
.end method

.method private static a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1152
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_26

    .line 1158
    const-class v2, Landroid/os/StatFs;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1159
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 1160
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 1161
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_26

    .line 1162
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_26

    return-wide p0

    .line 1169
    :catchall_26
    :cond_26
    :try_start_26
    const-class p1, Landroid/os/StatFs;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1170
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v1, [Ljava/lang/Object;

    .line 1171
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 1172
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_49

    .line 1173
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_45

    int-to-long p0, p0

    return-wide p0

    :catchall_45
    move-exception p0

    .line 1175
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_49
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x2000

    :cond_3
    :goto_3
    if-nez v0, :cond_15

    if-lez v1, :cond_15

    .line 925
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    move-object v0, v2

    goto :goto_3

    :catchall_e
    nop

    .line 928
    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x200

    if-ge v1, v2, :cond_3

    :cond_15
    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .registers 6

    .line 1589
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "/proc/%d/cmdline"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1590
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1589
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x80

    .line 1591
    invoke-static {v0, p0, v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    .line 1592
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1593
    invoke-static {p0}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception p0

    .line 1595
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_2c
    const-string p0, "unknown"

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_6

    :catchall_5
    const/4 v0, 0x0

    .line 1099
    :goto_6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1100
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1912
    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2f

    .line 1916
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_10

    return-object p0

    :cond_10
    const/16 v1, 0x5f

    .line 1920
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v0, :cond_19

    return-object p0

    :cond_19
    add-int/lit8 v3, v2, 0x1

    .line 1924
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gt v1, v2, :cond_22

    return-object p0

    .line 1930
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CrashSDK"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 1931
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1933
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_44

    return-object p0

    .line 1938
    :cond_44
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1939
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_ac

    .line 1940
    array-length v3, v2

    if-gtz v3, :cond_53

    goto :goto_ac

    :cond_53
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    .line 1946
    :try_start_57
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/c;->b([B[B)[B

    move-result-object v3
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception v0

    .line 1947
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_68
    if-nez v3, :cond_6b

    return-object p0

    .line 1955
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1956
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1957
    invoke-static {v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_99

    return-object p0

    .line 1961
    :cond_99
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_a8

    .line 1962
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object p0

    .line 1965
    :cond_a8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_ac
    :goto_ac
    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 883
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_79

    const/16 v1, 0x1a

    const-string v2, "ps"

    if-lt v0, v1, :cond_f

    :try_start_8
    const-string v0, "-ef"

    .line 886
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 888
    :cond_f
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 890
    :goto_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 891
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 892
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 894
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    .line 895
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v2

    .line 897
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 899
    :cond_36
    :goto_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_79

    const-string v5, "UTF-8"

    if-eqz v4, :cond_74

    const/4 v6, 0x1

    if-eqz v0, :cond_47

    .line 901
    :try_start_41
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_61

    :cond_47
    if-eqz v2, :cond_50

    .line 902
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_50

    goto :goto_61

    :cond_50
    const/16 v7, 0x2f

    .line 904
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_60

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gtz v7, :cond_61

    :cond_60
    const/4 v6, 0x0

    :cond_61
    :goto_61
    if-eqz v6, :cond_36

    .line 908
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v4, "\n"

    .line 909
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_36

    .line 912
    :cond_74
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_78
    .catchall {:try_start_41 .. :try_end_78} :catchall_79

    return-object p0

    :catchall_79
    move-exception p0

    .line 913
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const-string p0, "exception exists."

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "\n"

    const-string v6, "\'\n"

    const-string v7, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v8, "UTF-8"

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 1672
    :try_start_11
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_47f

    const/4 v12, 0x1

    if-nez v0, :cond_22

    .line 1673
    :try_start_18
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V

    .line 1674
    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Z)V

    goto :goto_22

    :catchall_1f
    move-exception v0

    goto/16 :goto_481

    :cond_22
    :goto_22
    cmp-long v13, v3, v9

    if-nez v13, :cond_2c

    .line 1680
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_1f

    goto :goto_2d

    :cond_2c
    move-object v0, v11

    .line 1682
    :goto_2d
    :try_start_2d
    new-instance v14, Lcom/uc/crashsdk/e$a;

    invoke-direct {v14, v3, v4, v0}, Lcom/uc/crashsdk/e$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_47f

    .line 1685
    :try_start_32
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_40

    const/16 v0, 0x7e

    .line 1686
    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    .line 1688
    :try_start_3d
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1693
    :cond_40
    :goto_40
    invoke-static {}, Lcom/uc/crashsdk/e;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v2, v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_47c

    if-eqz p4, :cond_52

    .line 1697
    :try_start_49
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_52

    :catchall_4d
    move-exception v0

    move-object v15, v0

    .line 1698
    :try_start_4f
    invoke-static {v15}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_47c

    .line 1704
    :cond_52
    :goto_52
    :try_start_52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, "Process Name: \'"

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, "Thread Name: \'"

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_8e
    .catchall {:try_start_52 .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception v0

    :try_start_90
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_47c

    :goto_93
    :try_start_93
    const-string v0, "Back traces starts.\n"

    .line 1708
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_e8

    .line 1709
    :try_start_9c
    const-class v0, Ljava/lang/Throwable;

    const-string v6, "detailMessage"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_bf

    check-cast v6, Ljava/lang/String;

    const-string v15, "\n\t"

    const-string v9, "\n->  "

    invoke-virtual {v6, v15, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ba
    .catchall {:try_start_9c .. :try_end_ba} :catchall_bb

    goto :goto_bf

    :catchall_bb
    move-exception v0

    :try_start_bc
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1713
    :cond_bf
    :goto_bf
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 1714
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ec

    .line 1715
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Message: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_e7
    .catchall {:try_start_bc .. :try_end_e7} :catchall_e8

    goto :goto_ec

    :catchall_e8
    move-exception v0

    .line 1717
    :try_start_e9
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_47c

    .line 1721
    :cond_ec
    :goto_ec
    :try_start_ec
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v14}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1722
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_f5

    goto :goto_f9

    :catchall_f5
    move-exception v0

    .line 1723
    :try_start_f6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_47c

    :goto_f9
    :try_start_f9
    const-string v0, "Back traces ends.\n"

    .line 1727
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_102
    .catchall {:try_start_f9 .. :try_end_102} :catchall_103

    goto :goto_107

    :catchall_103
    move-exception v0

    .line 1728
    :try_start_104
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1731
    :goto_107
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_10a
    .catchall {:try_start_104 .. :try_end_10a} :catchall_47c

    .line 1734
    :try_start_10a
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10e

    goto :goto_113

    :catchall_10e
    move-exception v0

    move-object v1, v0

    .line 1735
    :try_start_110
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_47c

    .line 1741
    :goto_113
    :try_start_113
    invoke-static {v14, v8, v7}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_117

    goto :goto_11c

    :catchall_117
    move-exception v0

    move-object v1, v0

    .line 1742
    :try_start_119
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_47c

    :goto_11c
    if-eqz p4, :cond_127

    .line 1748
    :try_start_11e
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_122

    goto :goto_127

    :catchall_122
    move-exception v0

    move-object v1, v0

    .line 1749
    :try_start_124
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_47c

    :cond_127
    :goto_127
    const/16 v1, 0x2800

    :try_start_129
    const-string v0, "/proc/meminfo"

    const-string v6, "meminfo:\n"

    .line 1755
    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v14, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_137
    .catchall {:try_start_129 .. :try_end_137} :catchall_138

    goto :goto_13c

    :catchall_138
    move-exception v0

    :try_start_139
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_47c

    :goto_13c
    const/4 v6, 0x0

    :try_start_13d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "/proc/%d/status"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v10, v6

    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "status:\n"

    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v14, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_15d
    .catchall {:try_start_13d .. :try_end_15d} :catchall_15e

    goto :goto_162

    :catchall_15e
    move-exception v0

    :try_start_15f
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_47c

    :goto_162
    :try_start_162
    const-string v0, "memory info:\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_17e
    .catchall {:try_start_162 .. :try_end_17e} :catchall_17f

    goto :goto_183

    :catchall_17f
    move-exception v0

    :try_start_180
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_183
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1758
    invoke-static {v14}, Lcom/uc/crashsdk/e;->f(Ljava/io/OutputStream;)V
    :try_end_189
    .catchall {:try_start_180 .. :try_end_189} :catchall_47c

    .line 1761
    :try_start_189
    invoke-static {v14, v8, v11}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_18c
    .catchall {:try_start_189 .. :try_end_18c} :catchall_18d

    goto :goto_192

    :catchall_18d
    move-exception v0

    move-object v1, v0

    :try_start_18f
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_192
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_1ac

    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z
    :try_end_198
    .catchall {:try_start_18f .. :try_end_198} :catchall_47c

    :try_start_198
    const-string v0, "JAVADUMPFILES"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a5
    .catchall {:try_start_198 .. :try_end_1a5} :catchall_1a6

    goto :goto_1aa

    :catchall_1a6
    move-exception v0

    :try_start_1a7
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1aa
    sput-boolean v12, Lcom/uc/crashsdk/e;->h:Z
    :try_end_1ac
    .catchall {:try_start_1a7 .. :try_end_1ac} :catchall_47c

    .line 1764
    :cond_1ac
    :try_start_1ac
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_1af
    .catchall {:try_start_1ac .. :try_end_1af} :catchall_1b0

    goto :goto_1b5

    :catchall_1b0
    move-exception v0

    move-object v1, v0

    .line 1765
    :try_start_1b2
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1770
    :goto_1b5
    invoke-static {v14}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_1b8
    .catchall {:try_start_1b2 .. :try_end_1b8} :catchall_47c

    .line 1773
    :try_start_1b8
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_1bb
    .catchall {:try_start_1b8 .. :try_end_1bb} :catchall_1bc

    goto :goto_1c1

    :catchall_1bc
    move-exception v0

    move-object v1, v0

    .line 1774
    :try_start_1be
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_47c

    :goto_1c1
    :try_start_1c1
    const-string v0, "battery info:\n"

    .line 1779
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1ca
    .catchall {:try_start_1c1 .. :try_end_1ca} :catchall_1cb

    goto :goto_1cf

    :catchall_1cb
    move-exception v0

    :try_start_1cc
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_1cf
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_47c

    :goto_1cf
    :try_start_1cf
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_1e5

    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "BATTERYINFO"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    sput-boolean v12, Lcom/uc/crashsdk/e;->h:Z

    goto :goto_1fb

    :cond_1e5
    invoke-static {}, Lcom/uc/crashsdk/e;->X()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_1fb

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f6
    .catchall {:try_start_1cf .. :try_end_1f6} :catchall_1f7

    goto :goto_1fb

    :catchall_1f7
    move-exception v0

    :try_start_1f8
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_1fb
    :goto_1fb
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_1fe
    .catchall {:try_start_1f8 .. :try_end_1fe} :catchall_47c

    :try_start_1fe
    const-string v0, "disk info:\n"

    .line 1782
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_207
    .catchall {:try_start_1fe .. :try_end_207} :catchall_208

    goto :goto_20c

    :catchall_208
    move-exception v0

    :try_start_209
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_20c
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_22d

    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z
    :try_end_212
    .catchall {:try_start_209 .. :try_end_212} :catchall_47c

    :try_start_212
    const-string v0, "FSSTAT"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_21f
    .catchall {:try_start_212 .. :try_end_21f} :catchall_220

    goto :goto_224

    :catchall_220
    move-exception v0

    :try_start_221
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_224
    sput-boolean v12, Lcom/uc/crashsdk/e;->h:Z
    :try_end_226
    .catchall {:try_start_221 .. :try_end_226} :catchall_47c

    :catchall_226
    :cond_226
    :goto_226
    move-object v15, v5

    move-object/from16 v16, v7

    :goto_229
    move/from16 v18, v13

    goto/16 :goto_338

    :cond_22d
    :try_start_22d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_226

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_226

    const-string v9, "/storage/emulated"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_254

    goto :goto_226

    :cond_254
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_257
    .catchall {:try_start_22d .. :try_end_257} :catchall_32f

    :try_start_257
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_25c
    .catchall {:try_start_257 .. :try_end_25c} :catchall_226

    :try_start_25c
    const-string v9, "getBlockCountLong"

    const-string v10, "getBlockCount"

    invoke-static {v0, v9, v10}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    const-string v15, "getBlockSizeLong"

    const-string v11, "getBlockSize"
    :try_end_268
    .catchall {:try_start_25c .. :try_end_268} :catchall_32f

    move-object/from16 v16, v7

    :try_start_26a
    invoke-static {v0, v15, v11}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v17, 0x400

    div-long v17, v9, v17

    mul-long v17, v17, v6

    const-wide/16 v19, 0x2800

    cmp-long v11, v17, v19

    if-ltz v11, :cond_329

    const-string v11, "getAvailableBlocksLong"

    const-string v15, "getAvailableBlocks"
    :try_end_27e
    .catchall {:try_start_26a .. :try_end_27e} :catchall_32c

    move/from16 v18, v13

    :try_start_280
    invoke-static {v0, v11, v15}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-string v11, "getFreeBlocksLong"

    const-string v15, "getFreeBlocks"

    invoke-static {v0, v11, v15}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_28c
    .catchall {:try_start_280 .. :try_end_28c} :catchall_326

    :try_start_28c
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s:\n"

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v15, v11

    invoke-static {v0, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "  total:      %d kB\n"

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/Object;
    :try_end_2a6
    .catchall {:try_start_28c .. :try_end_2a6} :catchall_31e

    long-to-double v9, v9

    const-wide/high16 v19, 0x3ff0000000000000L  # 1.0

    mul-double v9, v9, v19

    move-object v15, v5

    long-to-double v4, v6

    mul-double v9, v9, v4

    const-wide/high16 v21, 0x4090000000000000L  # 1024.0

    div-double v9, v9, v21

    double-to-long v9, v9

    :try_start_2b4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v11, v10

    invoke-static {v0, v1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "  available:  %d kB\n"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    long-to-double v11, v12

    mul-double v11, v11, v19

    mul-double v11, v11, v4

    div-double v11, v11, v21

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-static {v0, v1, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "  free:       %d kB\n"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    long-to-double v2, v2

    mul-double v2, v2, v19

    mul-double v2, v2, v4

    div-double v2, v2, v21

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v10, v3

    invoke-static {v0, v1, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "  block size: %d B\n\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_31b
    .catchall {:try_start_2b4 .. :try_end_31b} :catchall_31c

    goto :goto_338

    :catchall_31c
    move-exception v0

    goto :goto_320

    :catchall_31e
    move-exception v0

    move-object v15, v5

    :goto_320
    :try_start_320
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_323
    .catchall {:try_start_320 .. :try_end_323} :catchall_324

    goto :goto_338

    :catchall_324
    move-exception v0

    goto :goto_335

    :catchall_326
    move-exception v0

    move-object v15, v5

    goto :goto_335

    :cond_329
    move-object v15, v5

    goto/16 :goto_229

    :catchall_32c
    move-exception v0

    move-object v15, v5

    goto :goto_333

    :catchall_32f
    move-exception v0

    move-object v15, v5

    move-object/from16 v16, v7

    :goto_333
    move/from16 v18, v13

    :goto_335
    :try_start_335
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_338
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_33b
    .catchall {:try_start_335 .. :try_end_33b} :catchall_47c

    :try_start_33b
    const-string v0, "device status:\n"

    .line 1785
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_344
    .catchall {:try_start_33b .. :try_end_344} :catchall_345

    goto :goto_349

    :catchall_345
    move-exception v0

    :try_start_346
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_349
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z
    :try_end_34b
    .catchall {:try_start_346 .. :try_end_34b} :catchall_47c

    if-eqz v0, :cond_368

    const/4 v1, 0x0

    :try_start_34e
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "DEVICESTATUS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_360
    .catchall {:try_start_34e .. :try_end_360} :catchall_362

    goto/16 :goto_404

    :catchall_362
    move-exception v0

    :goto_363
    :try_start_363
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_366
    .catchall {:try_start_363 .. :try_end_366} :catchall_47c

    goto/16 :goto_404

    :cond_368
    :try_start_368
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "has root: %s\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, ""

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_38c

    move-object v1, v2

    :cond_38c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->f()Z

    move-result v1

    if-eqz v1, :cond_3a4

    const-string v1, " (default root)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a4
    move-object v1, v15

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_404

    const-string v2, "su binary: %s\n"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "su permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->g()Z

    move-result v1

    if-eqz v1, :cond_3e6

    const-string v1, "valid ("

    :goto_3e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e9

    :cond_3e6
    const-string v1, "invalid ("

    goto :goto_3e2

    :goto_3e9
    invoke-static {}, Lcom/uc/crashsdk/a/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_400
    .catchall {:try_start_368 .. :try_end_400} :catchall_401

    goto :goto_404

    :catchall_401
    move-exception v0

    goto/16 :goto_363

    :cond_404
    :goto_404
    :try_start_404
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1788
    invoke-static {v14}, Lcom/uc/crashsdk/e;->c(Ljava/io/OutputStream;)V

    .line 1791
    invoke-static {v14}, Lcom/uc/crashsdk/e;->d(Ljava/io/OutputStream;)V
    :try_end_40d
    .catchall {:try_start_404 .. :try_end_40d} :catchall_47c

    move-object/from16 v1, v16

    const/4 v2, 0x0

    .line 1794
    :try_start_410
    invoke-static {v14, v8, v1, v2}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_413
    .catchall {:try_start_410 .. :try_end_413} :catchall_414

    goto :goto_419

    :catchall_414
    move-exception v0

    move-object v2, v0

    :try_start_416
    invoke-static {v2, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_419
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_435

    const/4 v2, 0x0

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_420
    .catchall {:try_start_416 .. :try_end_420} :catchall_47c

    :try_start_420
    const-string v0, "JAVACACHEDINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_42d
    .catchall {:try_start_420 .. :try_end_42d} :catchall_42e

    goto :goto_432

    :catchall_42e
    move-exception v0

    :try_start_42f
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_432
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_435
    .catchall {:try_start_42f .. :try_end_435} :catchall_47c

    .line 1797
    :cond_435
    :try_start_435
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_438
    .catchall {:try_start_435 .. :try_end_438} :catchall_439

    goto :goto_43e

    :catchall_439
    move-exception v0

    move-object v2, v0

    .line 1798
    :try_start_43b
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_43e
    .catchall {:try_start_43b .. :try_end_43e} :catchall_47c

    :goto_43e
    const/4 v2, 0x0

    .line 1803
    :try_start_43f
    invoke-static {v14, v8, v1, v2}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_442
    .catchall {:try_start_43f .. :try_end_442} :catchall_443

    goto :goto_448

    :catchall_443
    move-exception v0

    move-object v1, v0

    :try_start_445
    invoke-static {v1, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_448
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_464

    const/4 v1, 0x0

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_44f
    .catchall {:try_start_445 .. :try_end_44f} :catchall_47c

    :try_start_44f
    const-string v0, "JAVACALLBACKINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_45c
    .catchall {:try_start_44f .. :try_end_45c} :catchall_45d

    goto :goto_461

    :catchall_45d
    move-exception v0

    :try_start_45e
    invoke-static {v0, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_461
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    .line 1806
    :cond_464
    invoke-virtual {v14}, Lcom/uc/crashsdk/e$a;->a()V

    .line 1807
    invoke-static {v14}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;)V
    :try_end_46a
    .catchall {:try_start_45e .. :try_end_46a} :catchall_47c

    .line 1810
    :try_start_46a
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_46d
    .catchall {:try_start_46a .. :try_end_46d} :catchall_46e

    goto :goto_473

    :catchall_46e
    move-exception v0

    move-object v1, v0

    .line 1811
    :try_start_470
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_473
    .catchall {:try_start_470 .. :try_end_473} :catchall_47c

    :goto_473
    if-eqz v18, :cond_478

    .line 1818
    invoke-static {v14}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    .line 1820
    :cond_478
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_490

    :catchall_47c
    move-exception v0

    move-object v11, v14

    goto :goto_481

    :catchall_47f
    move-exception v0

    move-object v2, v11

    .line 1814
    :goto_481
    :try_start_481
    invoke-static {v0, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_484
    .catchall {:try_start_481 .. :try_end_484} :catchall_4b1

    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-eqz v0, :cond_48d

    .line 1818
    invoke-static {v11}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    .line 1820
    :cond_48d
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1823
    :goto_490
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-nez v0, :cond_497

    .line 1825
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->q(Ljava/lang/String;)V

    .line 1830
    :cond_497
    :try_start_497
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-nez v0, :cond_4a4

    .line 1832
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1833
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a6

    :cond_4a4
    move-object/from16 v0, p1

    :goto_4a6
    const-string v1, "java"

    .line 1837
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4ab
    .catchall {:try_start_497 .. :try_end_4ab} :catchall_4ac

    goto :goto_4b0

    :catchall_4ac
    move-exception v0

    .line 1838
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_4b0
    return-object p1

    :catchall_4b1
    move-exception v0

    move-object v1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4bc

    .line 1818
    invoke-static {v11}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    .line 1820
    :cond_4bc
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 5

    .line 3291
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 3292
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 3293
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    const-string p0, "%d%02d%02d%02d%02d%02d"

    .line 3291
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 11

    .line 4482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_44

    .line 4484
    array-length v2, p0

    if-lez v2, :cond_44

    const/4 v2, 0x1

    if-nez p1, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 4486
    :goto_11
    array-length v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_14
    if-ge v5, v4, :cond_43

    aget-object v7, p0, v5

    add-int/lit8 v6, v6, 0x1

    const-string v8, "  at "

    .line 4488
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4489
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    .line 4490
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_40

    .line 4492
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 4496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v6, 0x0

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_43
    move v1, v6

    :cond_44
    if-nez v1, :cond_4b

    const-string p0, "  (no java stack)\n"

    .line 4501
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    return-object v0
.end method

.method public static a(I[Ljava/lang/Object;)V
    .registers 9

    const/16 v0, 0x1d

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_21c

    .line 450
    :pswitch_a  #0x194
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_215

    return-void

    .line 440
    :pswitch_f  #0x19f
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_1c

    if-eqz p1, :cond_16

    goto :goto_1c

    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 441
    :cond_1c
    :goto_1c
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-ltz v3, :cond_3f

    invoke-static {}, Lcom/uc/crashsdk/a/h;->g()V

    const/16 p0, 0x64

    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(I)V

    invoke-static {v4, v4}, Lcom/uc/crashsdk/e;->b(ZZ)I

    invoke-static {}, Lcom/uc/crashsdk/a/h;->b()V

    goto :goto_48

    :cond_3f
    invoke-static {}, Lcom/uc/crashsdk/a/h;->h()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->c()V

    :goto_48
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Calendar;)V

    .line 446
    :pswitch_4b  #0x1a0
    invoke-static {}, Lcom/uc/crashsdk/e;->V()V

    return-void

    .line 436
    :pswitch_4f  #0x19e
    :try_start_4f
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5a

    return-void

    :cond_5a
    sget p0, Lcom/uc/crashsdk/e;->N:I

    add-int/2addr p0, v4

    sput p0, Lcom/uc/crashsdk/e;->N:I

    if-lt p0, v2, :cond_6d

    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_6c

    const/16 p0, 0x82

    const-string p1, "(get failed)"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_6c
    return-void

    :cond_6d
    invoke-static {}, Lcom/uc/crashsdk/e;->W()V
    :try_end_70
    .catchall {:try_start_4f .. :try_end_70} :catchall_71

    return-void

    :catchall_71
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_76  #0x19d
    const/16 p0, 0x8

    .line 432
    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    return-void

    .line 428
    :pswitch_7c  #0x19c
    sget-boolean p0, Lcom/uc/crashsdk/e;->R:Z

    if-nez p0, :cond_94

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->b(Landroid/content/Context;)V

    return-void

    :cond_94
    sget-boolean p0, Lcom/uc/crashsdk/e;->R:Z

    if-eqz p0, :cond_b4

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p0

    if-eqz p0, :cond_a4

    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-nez p0, :cond_b4

    :cond_a4
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    :try_start_a8
    sget-object p1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v3, Lcom/uc/crashsdk/e;->R:Z
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b0

    return-void

    :catchall_b0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_b4
    return-void

    .line 424
    :pswitch_b5  #0x19b
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_cd

    const-string p0, "jni"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result p0

    const/16 p1, 0x1c

    invoke-static {p1, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    const-string p0, "anr"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_cd
    return-void

    .line 420
    :pswitch_ce  #0x19a
    invoke-static {v3, v4}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    return-void

    .line 413
    :pswitch_d2  #0x199
    invoke-static {v3, v3}, Lcom/uc/crashsdk/e;->b(ZZ)I

    return-void

    .line 412
    :pswitch_d6  #0x198
    sget-object p0, Lcom/uc/crashsdk/e;->ab:Ljava/lang/Object;

    monitor-enter p0

    :try_start_d9
    sget-boolean p1, Lcom/uc/crashsdk/e;->ac:Z

    if-nez p1, :cond_10d

    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result p1

    if-eqz p1, :cond_10d

    invoke-static {}, Lcom/uc/crashsdk/b;->w()Z

    move-result p1

    if-nez p1, :cond_ea

    goto :goto_10d

    :cond_ea
    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    invoke-static {}, Lcom/uc/crashsdk/a/h;->f()V

    invoke-static {}, Lcom/uc/crashsdk/f;->c()V

    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p1

    if-eqz p1, :cond_fc

    invoke-static {}, Lcom/uc/crashsdk/e;->B()V

    :cond_fc
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result p1

    if-eqz p1, :cond_109

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(Ljava/util/Calendar;)V

    :cond_109
    sput-boolean v4, Lcom/uc/crashsdk/e;->ac:Z

    monitor-exit p0

    return-void

    :cond_10d
    :goto_10d
    monitor-exit p0

    return-void

    :catchall_10f
    move-exception p1

    monitor-exit p0
    :try_end_111
    .catchall {:try_start_d9 .. :try_end_111} :catchall_10f

    throw p1

    .line 405
    :pswitch_112  #0x197
    :try_start_112
    invoke-static {}, Lcom/uc/crashsdk/a;->d()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_116

    return-void

    :catchall_116
    move-exception p0

    .line 406
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void

    .line 395
    :pswitch_11b  #0x196
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_128

    if-eqz p1, :cond_122

    goto :goto_128

    :cond_122
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 396
    :cond_128
    :goto_128
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    .line 397
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    .line 398
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 399
    invoke-static {p0, v0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V

    return-void

    .line 391
    :pswitch_141  #0x195
    sput-boolean v3, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->X()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/b;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_159

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_159
    return-void

    .line 387
    :pswitch_15a  #0x193
    invoke-static {}, Lcom/uc/crashsdk/e;->aa()V

    return-void

    .line 383
    :pswitch_15e  #0x192
    sget-object p0, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    monitor-enter p0

    :try_start_161
    sget-object p1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    if-nez p1, :cond_167

    monitor-exit p0

    return-void

    :cond_167
    sput-boolean v4, Lcom/uc/crashsdk/e;->W:Z

    monitor-exit p0
    :try_end_16a
    .catchall {:try_start_161 .. :try_end_16a} :catchall_1f0

    invoke-static {}, Lcom/uc/crashsdk/b;->n()Z

    move-result p1

    if-nez p1, :cond_1ef

    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result p1

    if-nez p1, :cond_180

    const-string p0, "DEBUG"

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_180
    const-string p1, "unexp"

    invoke-static {p1}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_190

    const-string p0, "DEBUG"

    const-string p1, "unexp sample miss"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_190
    invoke-static {}, Lcom/uc/crashsdk/g;->o()I

    move-result p1

    int-to-long v5, p1

    invoke-static {}, Lcom/uc/crashsdk/g;->p()I

    move-result p1

    invoke-static {v5, v6, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeGenerateUnexpLog(JI)I

    move-result p1

    if-eqz p1, :cond_1e7

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/uc/crashsdk/f;->a(I)V

    and-int/lit16 v3, p1, 0x1100

    if-eqz v3, :cond_1b2

    const/16 p1, 0x69

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x1e

    :goto_1ae
    invoke-static {p1}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_1e4

    :cond_1b2
    and-int/lit16 v3, p1, 0x2100

    if-eqz v3, :cond_1bd

    const/16 p1, 0x68

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x1f

    goto :goto_1ae

    :cond_1bd
    and-int/lit16 v3, p1, 0x4100

    if-eqz v3, :cond_1c8

    const/16 p1, 0x6a

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x20

    goto :goto_1ae

    :cond_1c8
    and-int/lit16 v3, p1, 0x500

    if-eqz v3, :cond_1d4

    const/16 p1, 0x67

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    invoke-static {v2}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_1e4

    :cond_1d4
    and-int/lit16 p1, p1, 0x900

    if-eqz p1, :cond_1e0

    const/16 p1, 0x6b

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_1e4

    :cond_1e0
    const/16 p1, 0x66

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    :goto_1e4
    invoke-static {v4}, Lcom/uc/crashsdk/e;->a(Z)V

    :cond_1e7
    monitor-enter p0

    :try_start_1e8
    sput-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    monitor-exit p0

    return-void

    :catchall_1ec
    move-exception p1

    monitor-exit p0
    :try_end_1ee
    .catchall {:try_start_1e8 .. :try_end_1ee} :catchall_1ec

    throw p1

    :cond_1ef
    return-void

    :catchall_1f0
    move-exception p1

    :try_start_1f1
    monitor-exit p0
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f0

    throw p1

    .line 379
    :pswitch_1f3  #0x191
    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1fc

    const/4 p0, 0x1

    goto :goto_1fd

    :cond_1fc
    const/4 p0, 0x0

    :goto_1fd
    if-eqz p0, :cond_202

    const-wide/16 p0, 0x1

    goto :goto_204

    :cond_202
    const-wide/16 p0, 0x0

    :goto_204
    invoke-static {v2, p0, p1, v1, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    sput-boolean v4, Lcom/uc/crashsdk/a;->c:Z

    invoke-static {v3}, Lcom/uc/crashsdk/a;->a(Z)Z

    sput-boolean v4, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->Y()V

    invoke-static {}, Lcom/uc/crashsdk/e;->x()V

    return-void

    .line 450
    :cond_215
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    nop

    :pswitch_data_21c
    .packed-switch 0x191
        :pswitch_1f3  #00000191
        :pswitch_15e  #00000192
        :pswitch_15a  #00000193
        :pswitch_a  #00000194
        :pswitch_141  #00000195
        :pswitch_11b  #00000196
        :pswitch_112  #00000197
        :pswitch_d6  #00000198
        :pswitch_d2  #00000199
        :pswitch_ce  #0000019a
        :pswitch_b5  #0000019b
        :pswitch_7c  #0000019c
        :pswitch_76  #0000019d
        :pswitch_4f  #0000019e
        :pswitch_f  #0000019f
        :pswitch_4b  #000001a0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 3496
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->U()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3500
    :cond_7
    new-instance v0, Lcom/uc/crashsdk/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANR"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 3502
    invoke-static {v3}, Lcom/uc/crashsdk/a/f;->a(I)Landroid/os/Handler;

    move-result-object v3

    .line 3500
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception p0

    .line 3503
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$a;)V
    .registers 6

    .line 1451
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "log end: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1452
    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1451
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$a;->a(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    .line 1454
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    .registers 8

    const-string v0, "UTF-8"

    .line 2854
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 2857
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v1

    .line 2858
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2863
    :goto_f
    invoke-static {p1, p2, p3}, Lcom/uc/crashsdk/JNIBridge;->nativeDumpThreads(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2864
    sget-boolean p2, Lcom/uc/crashsdk/e;->af:Z

    if-nez p2, :cond_4e

    if-eqz p1, :cond_4e

    .line 2865
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x200

    if-ge p2, p3, :cond_4e

    const-string p2, "/"

    .line 2866
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    const/16 p2, 0xa

    .line 2867
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_4e

    .line 2869
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4a

    .line 2873
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can not found "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4a
    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    goto :goto_52

    :cond_4e
    move-object v2, p1

    goto :goto_52

    :cond_50
    const-string p1, "Native not initialized, skip dump!"

    :goto_52
    if-eqz p1, :cond_6d

    .line 2886
    :try_start_54
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$a;->write([B)V

    const-string p1, "\n"

    .line 2887
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception p1

    .line 2888
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2891
    :goto_69
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    goto :goto_86

    :cond_6d
    if-eqz v2, :cond_86

    .line 2892
    sget-boolean p1, Lcom/uc/crashsdk/e;->af:Z

    if-nez p1, :cond_86

    const/high16 p1, 0x100000

    .line 2894
    invoke-static {p0, v2, p1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I

    .line 2896
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_86

    .line 2898
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2903
    :cond_86
    :goto_86
    :try_start_86
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    return-void

    :catchall_8a
    move-exception p0

    .line 2904
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .registers 3

    :try_start_0
    const-string v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v1, "UTF-8"

    .line 939
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    .line 940
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 3410
    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    const/4 v1, 0x1

    .line 3412
    :try_start_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s^$"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 3413
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3412
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p0

    .line 3414
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3417
    :goto_21
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 11

    const/4 v0, 0x0

    .line 3396
    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    const/4 v1, 0x1

    .line 3398
    :try_start_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s`%d`%d,%d^$"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const/4 p1, 0x2

    .line 3399
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    if-eqz p4, :cond_1b

    const/4 p2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x4

    if-eqz p5, :cond_26

    const/4 v0, 0x1

    .line 3400
    :cond_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    .line 3398
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 3400
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3398
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    .line 3401
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3404
    :goto_3e
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    .line 3405
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 3095
    sput-object p0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    return-void

    .line 3099
    :cond_5
    sget-object p1, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter p1

    .line 3100
    :try_start_8
    sput-object p0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 3101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3103
    invoke-static {}, Lcom/uc/crashsdk/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 3102
    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3104
    monitor-exit p1

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw p0
.end method

.method private static a(Ljava/lang/String;ZZ)V
    .registers 34

    const-string v0, "crashsdk uploading logs"

    const-string v1, "crashsdk"

    .line 1984
    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    sget-object v1, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 1987
    :try_start_a
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_423

    .line 1988
    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Folder not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_42a

    :cond_34
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "List folder failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_42a

    :cond_4d
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5b
    if-ge v5, v3, :cond_3c9

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    move-object/from16 v18, v2

    if-nez v0, :cond_6d

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :cond_6a
    move/from16 v22, v3

    goto :goto_a5

    :cond_6d
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v20, 0x3e8

    if-eqz v2, :cond_ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    sub-long v22, v22, v24

    div-long v22, v22, v20

    const-wide/16 v19, 0x1e

    cmp-long v2, v22, v19

    if-lez v2, :cond_6a

    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v22, v3

    const-string v3, "delete legacy tmp file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :goto_a5
    move/from16 v26, v8

    move/from16 v23, v14

    :goto_a9
    const/4 v14, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_3bd

    :cond_ae
    move/from16 v22, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    move/from16 v23, v14

    move/from16 v24, v15

    const-wide/16 v14, 0x0

    cmp-long v0, v2, v14

    if-nez v0, :cond_c8

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :goto_c3
    move/from16 v26, v8

    move/from16 v15, v24

    goto :goto_a9

    :cond_c8
    const/4 v2, 0x3

    if-eqz p1, :cond_121

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v27

    sub-long v25, v25, v27

    div-long v25, v25, v20

    cmp-long v0, v25, v14

    if-ltz v0, :cond_f6

    const-wide/16 v20, 0x2

    cmp-long v0, v25, v20

    if-gez v0, :cond_e3

    :goto_e1
    const/4 v0, 0x0

    goto :goto_f7

    :cond_e3
    const-wide/16 v20, 0x5

    cmp-long v0, v25, v20

    if-gez v0, :cond_f6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, ".log"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    goto :goto_e1

    :cond_f6
    const/4 v0, 0x1

    :goto_f7
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "file: %s, modify interval: %d s, safe upload: %s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    const/16 v17, 0x0

    aput-object v28, v3, v17

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v19, 0x1

    aput-object v25, v3, v19

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v3, v26

    invoke-static {v14, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_a .. :try_end_11c} :catchall_432

    if-nez v0, :cond_121

    add-int/lit8 v8, v8, 0x1

    goto :goto_c3

    :cond_121
    :try_start_121
    invoke-static {}, Lcom/uc/crashsdk/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1b5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "([^_]+)_([^_]+)_([^_]+)\\.crashsdk"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1b5

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s%s_%s_%s.%s"
    :try_end_14d
    .catchall {:try_start_121 .. :try_end_14d} :catchall_1be

    move/from16 v26, v8

    const/4 v8, 0x5

    :try_start_150
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v15}, Lcom/uc/crashsdk/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v8, v17

    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x1

    aput-object v15, v8, v19

    invoke-static {}, Lcom/uc/crashsdk/e;->P()Ljava/lang/String;

    move-result-object v15

    const/16 v27, 0x2

    aput-object v15, v8, v27

    const/4 v15, 0x3

    aput-object v14, v8, v15

    const/4 v14, 0x4

    aput-object v0, v8, v14

    invoke-static {v3, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "File "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " matches, rename to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "crashsdk"

    invoke-static {v3, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1b2
    .catchall {:try_start_150 .. :try_end_1b2} :catchall_1b3

    goto :goto_1b8

    :catchall_1b3
    move-exception v0

    goto :goto_1c1

    :cond_1b5
    move/from16 v26, v8

    move-object v2, v4

    :goto_1b8
    if-eq v2, v4, :cond_1bc

    add-int/lit8 v12, v12, 0x1

    :cond_1bc
    move-object v4, v2

    goto :goto_1c4

    :catchall_1be
    move-exception v0

    move/from16 v26, v8

    :goto_1c1
    :try_start_1c1
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_1c4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->m(Ljava/lang/String;)[Z

    move-result-object v2

    const/4 v3, 0x0

    aget-boolean v8, v2, v3

    const/4 v14, 0x1

    aget-boolean v15, v2, v14

    invoke-static {v0, v8, v15}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    if-eq v0, v8, :cond_1ea

    aget-boolean v0, v2, v3

    if-eqz v0, :cond_1de

    add-int/lit8 v11, v11, 0x1

    :cond_1de
    const/4 v3, 0x1

    aget-boolean v0, v2, v3

    if-eqz v0, :cond_1e5

    add-int/lit8 v9, v9, 0x1

    :cond_1e5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1ea
    invoke-static {v4}, Lcom/uc/crashsdk/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1f2

    const/4 v0, 0x0

    goto :goto_20b

    :cond_1f2
    if-eq v4, v0, :cond_20b

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20b

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_20b
    :goto_20b
    if-nez v0, :cond_223

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBeforeUploadLog return null, skip upload: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto :goto_237

    :cond_223
    invoke-static {}, Lcom/uc/crashsdk/g;->z()I

    move-result v3

    if-lez v3, :cond_23e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    int-to-long v3, v3

    cmp-long v8, v14, v3

    if-ltz v8, :cond_23e

    add-int/lit8 v10, v10, 0x1

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :goto_237
    move-object/from16 v8, p0

    move/from16 v15, v24

    const/4 v14, 0x0

    goto/16 :goto_3bd

    :cond_23e
    new-instance v3, Lcom/uc/crashsdk/e$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/uc/crashsdk/e$d;-><init>(B)V

    const-wide/16 v14, 0x0

    iput-wide v14, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/uc/crashsdk/e$d;->a:J

    invoke-static {}, Lcom/uc/crashsdk/e;->T()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_270

    new-instance v8, Lcom/uc/crashsdk/a/e;

    const/16 v14, 0x1c3

    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v2, v15

    const/4 v15, 0x1

    aput-object v3, v2, v15

    invoke-direct {v8, v14, v2}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v4, v8}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    :cond_270
    invoke-static {}, Lcom/uc/crashsdk/g;->A()J

    move-result-wide v14

    invoke-static {}, Lcom/uc/crashsdk/g;->B()I

    move-result v2

    invoke-static {}, Lcom/uc/crashsdk/g;->C()I

    move-result v4

    const-wide/16 v20, 0x0

    cmp-long v8, v14, v20

    if-ltz v8, :cond_2a5

    move/from16 v20, v9

    iget-wide v8, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v29

    add-long v8, v8, v29

    cmp-long v21, v8, v14

    if-lez v21, :cond_2a7

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/uc/crashsdk/e$d;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Reach max upload bytes: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a1
    invoke-static {v2}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto :goto_2e3

    :cond_2a5
    move/from16 v20, v9

    :cond_2a7
    invoke-static {}, Lcom/uc/crashsdk/g;->f()Z

    move-result v8

    if-nez v8, :cond_2e3

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2cb

    if-ltz v2, :cond_2e3

    iget v4, v3, Lcom/uc/crashsdk/e$d;->c:I

    if-lt v4, v2, :cond_2e3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/uc/crashsdk/e$d;->g:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Reach max upload builtin log count: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a1

    :cond_2cb
    if-ltz v4, :cond_2e3

    iget v2, v3, Lcom/uc/crashsdk/e$d;->d:I

    if-lt v2, v4, :cond_2e3

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/uc/crashsdk/e$d;->f:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Reach max upload custom log count: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a1

    :cond_2e3
    :goto_2e3
    iget-boolean v2, v3, Lcom/uc/crashsdk/e$d;->e:Z

    if-eqz v2, :cond_2f2

    move-object/from16 v8, p0

    move/from16 v9, v20

    move/from16 v15, v24

    const/4 v14, 0x0

    const/16 v23, 0x1

    goto/16 :goto_3bd

    :cond_2f2
    iget-boolean v2, v3, Lcom/uc/crashsdk/e$d;->g:Z

    if-eqz v2, :cond_2fe

    move-object/from16 v8, p0

    move/from16 v9, v20

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_3bd

    :cond_2fe
    iget-boolean v2, v3, Lcom/uc/crashsdk/e$d;->f:Z

    if-eqz v2, :cond_30d

    move-object/from16 v8, p0

    move/from16 v9, v20

    move/from16 v15, v24

    const/4 v14, 0x0

    const/16 v16, 0x1

    goto/16 :goto_3bd

    :cond_30d
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/uc/crashsdk/e;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32c

    const-string v4, "_"

    const/16 v8, 0xa

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/16 v8, 0x9

    if-ne v4, v8, :cond_32c

    const/4 v4, 0x1

    aget-object v2, v2, v4

    goto :goto_32d

    :cond_32c
    const/4 v2, 0x0

    :goto_32d
    if-eqz v2, :cond_33b

    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33b

    const/4 v2, 0x1

    goto :goto_33c

    :cond_33b
    const/4 v2, 0x0

    :goto_33c
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, p0

    invoke-static {v0, v4, v8}, Lcom/uc/crashsdk/a/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Uploaded log: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "crashsdk"

    const/4 v13, 0x0

    invoke-static {v9, v4, v13}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_367

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_367
    iget-wide v13, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v29

    add-long v13, v13, v29

    iput-wide v13, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_37e

    iget v2, v3, Lcom/uc/crashsdk/e$d;->c:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, Lcom/uc/crashsdk/e$d;->c:I

    goto :goto_384

    :cond_37e
    const/4 v4, 0x1

    iget v2, v3, Lcom/uc/crashsdk/e$d;->d:I

    add-int/2addr v2, v4

    iput v2, v3, Lcom/uc/crashsdk/e$d;->d:I

    :goto_384
    invoke-static {}, Lcom/uc/crashsdk/e;->T()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/uc/crashsdk/a/e;

    const/16 v9, 0x1c4

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v15, 0x1

    aput-object v3, v13, v15

    invoke-direct {v4, v9, v13}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x3

    const/4 v13, 0x0

    goto :goto_3ac

    :cond_3a1
    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x1

    if-eqz v2, :cond_3ab

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_3ab
    const/4 v2, 0x3

    :goto_3ac
    if-lt v13, v2, :cond_3b9

    const-string v0, "Upload failed 3 times continuously, abort upload!"

    const-string v2, "crashsdk"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v9, v20

    goto :goto_3cf

    :cond_3b9
    move/from16 v9, v20

    move/from16 v15, v24

    :goto_3bd
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v14, v23

    move/from16 v8, v26

    goto/16 :goto_5b

    :cond_3c9
    move/from16 v26, v8

    move/from16 v23, v14

    move/from16 v24, v15

    :goto_3cf
    if-lez v7, :cond_3d6

    const/16 v0, 0xc8

    invoke-static {v0, v7}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_3d6
    if-lez v6, :cond_3dd

    const/16 v0, 0xf

    invoke-static {v0, v6}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_3dd
    if-lez v10, :cond_3e4

    const/16 v0, 0x11

    invoke-static {v0, v10}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_3e4
    if-eqz v23, :cond_3eb

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_3eb
    if-eqz v24, :cond_3f2

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_3f2
    if-eqz v16, :cond_3f9

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_3f9
    if-nez v23, :cond_3ff

    if-nez v24, :cond_3ff

    if-eqz v16, :cond_404

    :cond_3ff
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_404
    if-lez v11, :cond_40b

    const/16 v0, 0x18

    invoke-static {v0, v11}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_40b
    if-lez v9, :cond_412

    const/16 v0, 0xc9

    invoke-static {v0, v9}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_412
    if-lez v12, :cond_419

    const/16 v0, 0x19

    invoke-static {v0, v12}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_419
    if-lez v26, :cond_42a

    const/16 v0, 0x1a

    move/from16 v4, v26

    invoke-static {v0, v4}, Lcom/uc/crashsdk/f;->a(II)V

    goto :goto_42a

    :cond_423
    const-string v0, "upload url is empty!"

    const-string v2, "crashsdk"

    .line 1990
    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42a
    .catchall {:try_start_1c1 .. :try_end_42a} :catchall_432

    :cond_42a
    :goto_42a
    if-eqz p2, :cond_43b

    .line 1996
    :try_start_42c
    sget-object v0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    :goto_42e
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_431
    .catchall {:try_start_42c .. :try_end_431} :catchall_43d

    goto :goto_43b

    :catchall_432
    move-exception v0

    .line 1992
    :try_start_433
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_436
    .catchall {:try_start_433 .. :try_end_436} :catchall_43f

    if-eqz p2, :cond_43b

    .line 1996
    :try_start_438
    sget-object v0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    goto :goto_42e

    .line 1999
    :cond_43b
    :goto_43b
    monitor-exit v1

    return-void

    :catchall_43d
    move-exception v0

    goto :goto_449

    :catchall_43f
    move-exception v0

    move-object v2, v0

    if-eqz p2, :cond_448

    .line 1996
    sget-object v0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_448
    throw v2

    .line 1999
    :goto_449
    monitor-exit v1
    :try_end_44a
    .catchall {:try_start_438 .. :try_end_44a} :catchall_43d

    throw v0
.end method

.method private static a(Ljava/lang/Throwable;)V
    .registers 2

    .line 4020
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x0

    .line 4021
    invoke-static {p0, v0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "DEBUG"

    .line 4022
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method

.method static a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .registers 4

    const-string v0, "UTF-8"

    if-eqz p1, :cond_23

    :try_start_4
    const-string v1, "[DEBUG] CrashHandler occurred new exception:\n"

    .line 1972
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1973
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1974
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v1, "\n\n"

    .line 1975
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception p1

    .line 1976
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1980
    :cond_23
    :goto_23
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/util/Calendar;)V
    .registers 10

    .line 4373
    invoke-static {}, Lcom/uc/crashsdk/g;->Q()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4377
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 4378
    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    const/4 v4, 0x0

    .line 4379
    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 4380
    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 4381
    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4382
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    const-wide/32 v7, 0x36ee80

    cmp-long p0, v0, v7

    if-lez p0, :cond_2e

    goto :goto_31

    :cond_2e
    const-wide/16 v7, 0x3e8

    add-long/2addr v7, v0

    .line 4395
    :goto_31
    new-instance p0, Lcom/uc/crashsdk/a/e;

    const/16 v0, 0x19f

    new-array v1, v3, [Ljava/lang/Object;

    .line 4397
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 4395
    invoke-static {v4, p0, v7, v8}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method static a(Z)V
    .registers 11

    .line 497
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->v()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 501
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 507
    :cond_17
    invoke-static {}, Lcom/uc/crashsdk/g;->l()I

    move-result v1

    .line 508
    invoke-static {}, Lcom/uc/crashsdk/g;->m()I

    move-result v2

    .line 509
    array-length v3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_27

    return-void

    .line 516
    :cond_27
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2c
    if-ge v5, v3, :cond_3e

    aget-object v8, v0, v5

    .line 517
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_39

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_39
    add-int/lit8 v7, v7, 0x1

    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3e
    if-eqz p0, :cond_46

    if-lt v6, v1, :cond_46

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_46
    const/4 v6, 0x0

    :goto_47
    if-nez p0, :cond_4f

    if-lt v7, v2, :cond_4f

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_4f
    const/4 v7, 0x0

    :goto_50
    if-nez v6, :cond_55

    if-nez v7, :cond_55

    return-void

    .line 539
    :cond_55
    new-instance p0, Lcom/uc/crashsdk/e$b;

    invoke-direct {p0, v4}, Lcom/uc/crashsdk/e$b;-><init>(B)V

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 543
    array-length p0, v0

    move v1, v6

    move v2, v7

    :goto_60
    if-ge v4, p0, :cond_ae

    aget-object v3, v0, v4

    .line 544
    invoke-static {v3}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v5
    :try_end_68
    .catchall {:try_start_0 .. :try_end_68} :catchall_c4

    const-string v8, "crashsdk"

    if-eqz v5, :cond_89

    if-lez v1, :cond_89

    .line 546
    :try_start_6e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Delete oldest crash log: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_a7

    :cond_89
    if-nez v5, :cond_a7

    if-lez v2, :cond_a7

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Delete oldest custom log: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, -0x1

    :cond_a7
    :goto_a7
    if-nez v1, :cond_ab

    if-eqz v2, :cond_ae

    :cond_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_ae
    const/16 p0, 0x10

    add-int v0, v6, v7

    .line 559
    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(II)V

    if-lez v6, :cond_bc

    const/16 p0, 0x16

    .line 562
    invoke-static {p0, v6}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_bc
    if-lez v7, :cond_c3

    const/16 p0, 0x17

    .line 566
    invoke-static {p0, v7}, Lcom/uc/crashsdk/f;->a(II)V
    :try_end_c3
    .catchall {:try_start_6e .. :try_end_c3} :catchall_c4

    :cond_c3
    return-void

    :catchall_c4
    move-exception p0

    .line 569
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Z
    .registers 7

    .line 116
    sget-wide v0, Lcom/uc/crashsdk/e;->f:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1e

    const-wide/16 v0, 0x2

    .line 117
    sput-wide v0, Lcom/uc/crashsdk/e;->f:J

    const-string v0, "logs"

    .line 118
    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    .line 119
    sput-wide v2, Lcom/uc/crashsdk/e;->f:J

    .line 122
    :cond_1e
    sget-wide v0, Lcom/uc/crashsdk/e;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)Z
    .registers 6

    .line 4584
    sget-boolean v0, Lcom/uc/crashsdk/e;->ae:Z

    const-string v1, "crashsdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const-string p0, "Can not call setHostFd and getHostFd in the same process!"

    .line 4585
    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4589
    :cond_d
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_17

    const-string p0, "Crash so is not loaded!"

    .line 4590
    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4594
    :cond_17
    sget-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_20

    const-string v0, "Has already set host fd!"

    .line 4595
    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4598
    :cond_20
    sput-object p0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    .line 4600
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    const/16 v0, 0xd

    int-to-long v3, p0

    const/4 v1, 0x0

    .line 4601
    invoke-static {v0, v3, v4, v1, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_35

    const/4 v4, 0x1

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    .line 4603
    :goto_36
    sput-boolean v4, Lcom/uc/crashsdk/e;->af:Z

    if-eq p0, v3, :cond_3e

    if-eq v1, v3, :cond_3d

    goto :goto_3e

    :cond_3d
    return v2

    :cond_3e
    :goto_3e
    return v0
.end method

.method private static a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    cmp-long v11, v2, v9

    if-nez v11, :cond_1e

    .line 2924
    :try_start_13
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    move-object v12, v0

    goto :goto_1f

    :catchall_1a
    move-exception v0

    move-object v12, v8

    move-object v13, v12

    goto :goto_3d

    :cond_1e
    move-object v12, v8

    .line 2926
    :goto_1f
    :try_start_1f
    new-instance v13, Lcom/uc/crashsdk/e$a;

    invoke-direct {v13, v2, v3, v12}, Lcom/uc/crashsdk/e$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_3b

    .line 2927
    :try_start_24
    sget-object v14, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_39

    .line 2928
    :try_start_27
    sput-object v1, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 2929
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_34

    const/16 v0, 0x7e

    .line 2930
    sget-object v15, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    invoke-static {v0, v15}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 2932
    :cond_34
    monitor-exit v14

    goto :goto_40

    :catchall_36
    move-exception v0

    monitor-exit v14
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    goto :goto_3d

    :catchall_3b
    move-exception v0

    move-object v13, v8

    .line 2935
    :goto_3d
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_40
    const/4 v14, 0x0

    if-nez v13, :cond_44

    return v14

    :cond_44
    const-wide/16 v15, 0x1

    and-long v15, p5, v15

    const/16 v17, 0x1

    cmp-long v0, v15, v9

    if-eqz v0, :cond_57

    move-object/from16 v15, p4

    .line 2944
    :try_start_50
    invoke-static {v13, v1, v15}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_57

    :catchall_54
    move-exception v0

    goto/16 :goto_133

    .line 2949
    :cond_57
    :goto_57
    :try_start_57
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    const-string v0, "\n"

    const-string v1, "UTF-8"

    .line 2950
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    .line 2951
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v0

    .line 2952
    :try_start_72
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2955
    :goto_75
    invoke-static {v13}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x4

    and-long v0, p5, v0

    cmp-long v15, v0, v9

    if-eqz v15, :cond_8c

    .line 2959
    invoke-static {v13}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_83
    .catchall {:try_start_72 .. :try_end_83} :catchall_54

    .line 2961
    :try_start_83
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8c

    :catchall_87
    move-exception v0

    move-object v1, v0

    .line 2962
    :try_start_89
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_8c
    :goto_8c
    if-eqz v4, :cond_99

    .line 2968
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_99

    const-string v0, "UTF-8"

    .line 2969
    invoke-static {v13, v0, v4}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_99
    if-eqz v5, :cond_a8

    .line 2973
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a8

    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    .line 2974
    invoke-static {v13, v0, v1, v5}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_a8
    if-eqz v6, :cond_b7

    .line 2978
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b7

    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    .line 2979
    invoke-static {v13, v0, v1, v6}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b7
    .catchall {:try_start_89 .. :try_end_b7} :catchall_54

    :cond_b7
    if-eqz v7, :cond_e3

    .line 2985
    :try_start_b9
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_c2

    :catchall_bd
    move-exception v0

    move-object v1, v0

    .line 2986
    :try_start_bf
    invoke-static {v1, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_54

    :goto_c2
    :try_start_c2
    const-string v0, "threads dump:\n"

    const-string v1, "UTF-8"

    .line 2991
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_cd
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_ce

    goto :goto_d2

    :catchall_ce
    move-exception v0

    .line 2992
    :try_start_cf
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2996
    :goto_d2
    sput-boolean v14, Lcom/uc/crashsdk/e;->h:Z

    .line 2997
    sput-object v7, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_54

    .line 2999
    :try_start_d6
    invoke-static {v13, v7, v2, v3}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_da

    goto :goto_df

    :catchall_da
    move-exception v0

    move-object v1, v0

    .line 3000
    :try_start_dc
    invoke-static {v1, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 3003
    :goto_df
    sput-object v8, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    .line 3004
    sput-boolean v17, Lcom/uc/crashsdk/e;->h:Z
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_54

    :cond_e3
    const-wide/16 v0, 0x8

    and-long v0, p5, v0

    cmp-long v2, v0, v9

    if-eqz v2, :cond_114

    if-nez v11, :cond_114

    .line 3010
    :try_start_ed
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f1

    goto :goto_f6

    :catchall_f1
    move-exception v0

    move-object v1, v0

    .line 3011
    :try_start_f3
    invoke-static {v1, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_54

    :goto_f6
    :try_start_f6
    const-string v0, "all threads dump:\n"

    const-string v1, "UTF-8"

    .line 3016
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_101
    .catchall {:try_start_f6 .. :try_end_101} :catchall_102

    goto :goto_106

    :catchall_102
    move-exception v0

    .line 3017
    :try_start_103
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 3021
    :goto_106
    sput-boolean v17, Lcom/uc/crashsdk/e;->u:Z
    :try_end_108
    .catchall {:try_start_103 .. :try_end_108} :catchall_54

    :try_start_108
    const-string v0, "all"

    .line 3023
    invoke-static {v13, v0, v9, v10}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    :try_end_10d
    .catchall {:try_start_108 .. :try_end_10d} :catchall_10e

    goto :goto_112

    :catchall_10e
    move-exception v0

    .line 3024
    :try_start_10f
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 3027
    :goto_112
    sput-boolean v14, Lcom/uc/crashsdk/e;->u:Z

    :cond_114
    const-wide/16 v0, 0x10

    and-long v0, p5, v0

    cmp-long v2, v0, v9

    if-eqz v2, :cond_11f

    .line 3032
    invoke-static {v13}, Lcom/uc/crashsdk/e;->e(Ljava/io/OutputStream;)V

    :cond_11f
    const-wide/16 v0, 0x2

    and-long v0, p5, v0

    cmp-long v2, v0, v9

    if-eqz v2, :cond_12d

    .line 3037
    invoke-virtual {v13}, Lcom/uc/crashsdk/e$a;->a()V

    .line 3038
    invoke-static {v13}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;)V

    :cond_12d
    if-eqz v11, :cond_136

    .line 3042
    invoke-static {v13}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V
    :try_end_132
    .catchall {:try_start_10f .. :try_end_132} :catchall_54

    goto :goto_136

    .line 3044
    :goto_133
    :try_start_133
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_136
    .catchall {:try_start_133 .. :try_end_136} :catchall_179

    .line 3047
    :cond_136
    :goto_136
    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 3048
    invoke-static {v12}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 3052
    :try_start_13c
    sget-object v1, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_174

    .line 3053
    :try_start_13f
    sget v0, Lcom/uc/crashsdk/e;->s:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uc/crashsdk/e;->s:I

    .line 3054
    sget-object v0, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    if-eqz v0, :cond_163

    .line 3055
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3056
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_156

    .line 3057
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3060
    :cond_156
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_161

    const/16 v0, 0x7f

    .line 3061
    sget-object v2, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 3063
    :cond_161
    sput-object v8, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 3066
    :cond_163
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_16f

    const/16 v0, 0x19

    .line 3067
    sget v2, Lcom/uc/crashsdk/e;->s:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 3069
    :cond_16f
    monitor-exit v1

    goto :goto_178

    :catchall_171
    move-exception v0

    monitor-exit v1
    :try_end_173
    .catchall {:try_start_13f .. :try_end_173} :catchall_171

    :try_start_173
    throw v0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_174

    :catchall_174
    move-exception v0

    .line 3072
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_178
    return v17

    :catchall_179
    move-exception v0

    move-object v1, v0

    .line 3047
    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 3048
    invoke-static {v12}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .registers 7

    .line 2351
    sget-object v0, Lcom/uc/crashsdk/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2353
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_66

    if-nez p0, :cond_16

    .line 2356
    :try_start_e
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12
    .catchall {:try_start_e .. :try_end_11} :catchall_66

    goto :goto_16

    :catch_12
    move-exception p0

    .line 2357
    :try_start_13
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_66

    :cond_16
    :goto_16
    const/4 p0, 0x0

    const/4 v2, 0x0

    .line 2365
    :try_start_18
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_26
    .catchall {:try_start_18 .. :try_end_23} :catchall_24

    goto :goto_2b

    :catchall_24
    move-exception p1

    goto :goto_62

    :catch_26
    move-exception v1

    .line 2366
    :try_start_27
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_57
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    move-object v1, p0

    :goto_2b
    if-eqz v1, :cond_39

    .line 2373
    :try_start_2d
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32
    .catchall {:try_start_2d .. :try_end_31} :catchall_60

    goto :goto_39

    :catch_32
    move-exception v3

    .line 2375
    :try_start_33
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_60

    goto :goto_39

    :catch_37
    move-exception p0

    goto :goto_5a

    .line 2380
    :cond_39
    :goto_39
    :try_start_39
    invoke-virtual {p1}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_4b

    if-eqz p0, :cond_47

    .line 2384
    :try_start_3f
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_60

    goto :goto_47

    :catch_43
    move-exception p0

    .line 2385
    :try_start_44
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_37
    .catchall {:try_start_44 .. :try_end_47} :catchall_60

    .line 2393
    :cond_47
    :goto_47
    :try_start_47
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_66

    goto :goto_5e

    :catchall_4b
    move-exception p1

    if-eqz p0, :cond_56

    .line 2384
    :try_start_4e
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52
    .catchall {:try_start_4e .. :try_end_51} :catchall_60

    goto :goto_56

    :catch_52
    move-exception p0

    .line 2385
    :try_start_53
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2387
    :cond_56
    :goto_56
    throw p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_37
    .catchall {:try_start_53 .. :try_end_57} :catchall_60

    :catch_57
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 2390
    :goto_5a
    :try_start_5a
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_60

    goto :goto_47

    .line 2395
    :goto_5e
    :try_start_5e
    monitor-exit v0

    return v2

    :catchall_60
    move-exception p1

    move-object p0, v1

    .line 2393
    :goto_62
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    :catchall_66
    move-exception p0

    .line 2395
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_66

    throw p0
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z
    .registers 10

    .line 2451
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x40

    const/4 v1, 0x0

    .line 2452
    invoke-static {v0, p0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    const-string v1, "(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)"

    .line 2457
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2458
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 2459
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-gez v7, :cond_5c

    const/4 v3, 0x2

    .line 2462
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/uc/crashsdk/e$d;->b:J

    const/4 v3, 0x3

    .line 2463
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/uc/crashsdk/e$d;->c:I

    const/4 v3, 0x4

    .line 2464
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/uc/crashsdk/e$d;->d:I

    .line 2465
    iput-wide v1, p1, Lcom/uc/crashsdk/e$d;->a:J
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p0

    .line 2468
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 2754
    invoke-static {p1}, Lcom/uc/crashsdk/e;->n(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    .line 2755
    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 2756
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Custom log \'%s\' has reach max count!"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v0

    :cond_1b
    return v1
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 2652
    sget-object v1, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_1d

    .line 2653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing java crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v12

    .line 2657
    :cond_1d
    sget-boolean v1, Lcom/uc/crashsdk/e;->af:Z

    if-nez v1, :cond_2a

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v14, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v14, 0x1

    :goto_2b
    if-nez v14, :cond_3d

    .line 2658
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v0, "DEBUG"

    .line 2659
    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    .line 2663
    :cond_3d
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "DEBUG"

    .line 2664
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom log sample miss: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    .line 2668
    :cond_57
    invoke-static {}, Lcom/uc/crashsdk/e;->Z()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 2669
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing native crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v12

    :cond_6f
    if-eqz p0, :cond_12b

    if-nez v0, :cond_75

    goto/16 :goto_12b

    .line 2677
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v1, 0x20

    and-long v1, p2, v1

    const-wide/16 v16, 0x0

    cmp-long v3, v1, v16

    if-eqz v3, :cond_98

    const/4 v11, 0x1

    goto :goto_99

    :cond_98
    const/4 v11, 0x0

    :goto_99
    if-eqz v14, :cond_c3

    .line 2682
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_a6

    const-string v1, "custom"

    .line 2687
    invoke-static {v15, v1, v0, v11}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_a8

    :cond_a6
    move-wide/from16 v1, v16

    :goto_a8
    cmp-long v3, v1, v16

    if-nez v3, :cond_c0

    const-string v1, "DEBUG"

    .line 2692
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip custom log: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_c0
    move-wide/from16 v18, v1

    goto :goto_d6

    .line 2696
    :cond_c3
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_ce

    return v12

    .line 2700
    :cond_ce
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V

    .line 2701
    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Z)V

    move-wide/from16 v18, v16

    .line 2705
    :goto_d6
    sget-object v20, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    monitor-enter v20

    move-object v1, v15

    move-wide/from16 v2, v18

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move v13, v11

    move-object/from16 v11, p7

    .line 2709
    :try_start_eb
    invoke-static/range {v1 .. v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    .line 2712
    monitor-exit v20
    :try_end_f0
    .catchall {:try_start_eb .. :try_end_f0} :catchall_128

    if-eqz v1, :cond_fb

    if-nez v14, :cond_fb

    .line 2715
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v13}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_fb
    cmp-long v2, v18, v16

    if-eqz v2, :cond_102

    .line 2719
    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_102
    if-nez v1, :cond_105

    return v12

    :cond_105
    if-nez v14, :cond_10a

    .line 2728
    invoke-static {v15}, Lcom/uc/crashsdk/e;->q(Ljava/lang/String;)V

    :cond_10a
    if-nez v14, :cond_114

    .line 2734
    invoke-static {v15}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2735
    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2738
    :cond_114
    invoke-static {v15, v0}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_126

    if-nez v14, :cond_126

    const/4 v1, 0x1

    .line 2743
    :try_start_11c
    invoke-static {v1, v12}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_120

    goto :goto_127

    :catchall_120
    move-exception v0

    move-object v2, v0

    .line 2744
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_127

    :cond_126
    const/4 v1, 0x1

    :goto_127
    return v1

    :catchall_128
    move-exception v0

    .line 2712
    :try_start_129
    monitor-exit v20
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    throw v0

    :cond_12b
    :goto_12b
    return v12
.end method

.method public static a(ZZ)Z
    .registers 9

    .line 2250
    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 2251
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_c

    .line 2252
    invoke-static {v1, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 2254
    :cond_c
    sput-boolean v1, Lcom/uc/crashsdk/e;->d:Z

    :cond_e
    const/4 v0, 0x0

    .line 2258
    :try_start_f
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v2

    .line 2259
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string p0, "CrashHandler url is empty!"

    const-string p1, "crashsdk"

    .line 2260
    invoke-static {p1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2264
    :cond_21
    sget-object v3, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_52

    .line 2265
    :try_start_24
    new-instance v4, Lcom/uc/crashsdk/a/e;

    const/16 v5, 0x196

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    .line 2267
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, p1

    invoke-direct {v4, v5, v6}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 2272
    invoke-static {p0, v4}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    move-result p1
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_4f

    if-eqz p1, :cond_4d

    if-eqz p0, :cond_4d

    .line 2276
    :try_start_45
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_4f

    goto :goto_4d

    :catch_49
    move-exception p0

    .line 2277
    :try_start_4a
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2281
    :cond_4d
    :goto_4d
    monitor-exit v3

    return v1

    :catchall_4f
    move-exception p0

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_4f

    :try_start_51
    throw p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    .line 2283
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static aa()V
    .registers 17

    .line 4253
    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v1

    .line 4254
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 4260
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_17

    return-void

    .line 4264
    :cond_17
    array-length v0, v2

    const/16 v3, 0x96

    if-gt v0, v3, :cond_1d

    return-void

    .line 4268
    :cond_1d
    new-instance v0, Lcom/uc/crashsdk/e$b;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/uc/crashsdk/e$b;-><init>(B)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4270
    array-length v0, v2

    sub-int/2addr v0, v3

    if-gez v0, :cond_2c

    const/4 v3, 0x0

    goto :goto_2d

    :cond_2c
    move v3, v0

    .line 4278
    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4279
    :goto_34
    array-length v0, v2

    if-ge v7, v0, :cond_64

    .line 4280
    aget-object v0, v2, v7

    const/4 v10, 0x1

    if-ge v7, v3, :cond_3e

    const/4 v11, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v11, 0x0

    :goto_3f
    if-nez v11, :cond_4f

    .line 4284
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12
    :try_end_45
    .catchall {:try_start_10 .. :try_end_45} :catchall_7e

    sub-long v12, v5, v12

    const-wide/32 v14, 0x19bfcc00

    cmp-long v16, v12, v14

    if-ltz v16, :cond_4f

    const/4 v11, 0x1

    :cond_4f
    if-eqz v11, :cond_64

    .line 4291
    :try_start_51
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_58

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_5e

    :catchall_58
    move-exception v0

    move-object v11, v0

    add-int/2addr v9, v10

    .line 4300
    :try_start_5b
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_5e
    const/4 v0, 0x3

    if-ge v9, v0, :cond_64

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 4309
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Removed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " logs in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_5b .. :try_end_7d} :catchall_7e

    return-void

    :catchall_7e
    move-exception v0

    .line 4310
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1511
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9a

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    if-eqz v3, :cond_54

    .line 1513
    :try_start_10
    invoke-static {}, Lcom/uc/crashsdk/e;->Q()[B

    move-result-object p1

    if-nez p1, :cond_23

    const-string p1, "(alloc buffer failed!)\n"

    .line 1515
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_9a

    .line 1516
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return v1

    .line 1518
    :cond_23
    :try_start_23
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_9a

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_2f
    const/4 v6, 0x0

    .line 1522
    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {v3, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_71

    add-int/2addr v0, v7

    sub-int v8, p2, v2

    add-int/lit8 v9, v8, 0x20

    if-le v7, v9, :cond_3f

    goto :goto_40

    :cond_3f
    move v8, v7

    :goto_40
    if-lez v8, :cond_48

    if-nez v6, :cond_48

    .line 1529
    invoke-virtual {p0, p1, v1, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_50

    add-int/2addr v2, v8

    :cond_48
    if-nez v6, :cond_30

    if-lt v8, v7, :cond_4e

    if-lt v2, p2, :cond_2f

    :cond_4e
    const/4 v6, 0x1

    goto :goto_30

    :catchall_50
    move-exception p1

    move v1, v2

    move-object v0, v3

    goto :goto_9b

    .line 1537
    :cond_54
    :try_start_54
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not exists!\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_9a

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_71
    if-lez v2, :cond_7c

    :try_start_73
    const-string p1, "\n"

    .line 1540
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_7c
    if-ge v2, v0, :cond_96

    .line 1544
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "(truncated %d bytes)\n"

    new-array v4, v4, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    .line 1545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1544
    invoke-static {p1, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1545
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1544
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_96
    .catchall {:try_start_73 .. :try_end_96} :catchall_50

    .line 1550
    :cond_96
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_a2

    :catchall_9a
    move-exception p1

    .line 1547
    :goto_9b
    :try_start_9b
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a6

    .line 1550
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    move v2, v1

    .line 1552
    :goto_a2
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return v2

    :catchall_a6
    move-exception p0

    .line 1550
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(ZZ)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 4442
    sget-boolean v1, Lcom/uc/crashsdk/e;->ac:Z

    if-nez v1, :cond_a

    .line 4443
    invoke-static {v0}, Lcom/uc/crashsdk/f;->d(Z)V

    :cond_a
    if-eqz p0, :cond_18

    .line 4450
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 4449
    invoke-static {v1, v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4451
    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    goto :goto_1f

    .line 4454
    :cond_18
    invoke-static {}, Lcom/uc/crashsdk/f;->a()I

    move-result v0

    .line 4455
    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    :goto_1f
    if-eqz p1, :cond_26

    .line 4460
    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(Z)I

    move-result p0

    return p0

    :cond_26
    return v0
.end method

.method static b()J
    .registers 5

    .line 143
    sget-wide v0, Lcom/uc/crashsdk/e;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    const-string v0, "local"

    .line 144
    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/uc/crashsdk/e;->g:J

    .line 146
    :cond_14
    sget-wide v0, Lcom/uc/crashsdk/e;->g:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    .line 2601
    :try_start_2
    invoke-static {p0}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception p1

    .line 2602
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_b
    :goto_b
    if-eqz p2, :cond_16

    .line 2608
    :try_start_d
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p1

    .line 2609
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-object p0
.end method

.method public static b(I)V
    .registers 4

    .line 4241
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19a

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 6

    .line 3737
    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3742
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 3743
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 3744
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 3745
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3746
    sget-object v1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3747
    invoke-static {v3}, Lcom/uc/crashsdk/a/f;->a(I)Landroid/os/Handler;

    move-result-object v4

    .line 3746
    invoke-virtual {p0, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3748
    sput-boolean v3, Lcom/uc/crashsdk/e;->R:Z
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception p0

    .line 3749
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Lcom/uc/crashsdk/e$a;)V
    .registers 3

    const/4 v0, 0x0

    .line 1460
    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    .line 1462
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOG_END"

    invoke-static {v1}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 1463
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p0

    .line 1464
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_28
    const/4 p0, 0x1

    .line 1467
    sput-boolean p0, Lcom/uc/crashsdk/e;->h:Z

    return-void
.end method

.method private static b(Ljava/io/OutputStream;)V
    .registers 12

    const-string v0, "-b"

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    const-string v4, "logcat:\n"

    .line 949
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 950
    invoke-static {}, Lcom/uc/crashsdk/g;->n()I

    move-result v4
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_e5

    if-gtz v4, :cond_2a

    :try_start_15
    const-string v0, "[DEBUG] custom java logcat lines count is 0!\n"

    .line 952
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v0

    .line 953
    :try_start_20
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 956
    :goto_23
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_e5

    .line 1011
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-void

    .line 960
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/uc/crashsdk/g;->n()I

    move-result v4

    .line 963
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "logcat"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "-d"

    aput-object v7, v6, v3

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v9, 0x3

    const-string v10, "events"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    aput-object v0, v6, v9

    const/4 v0, 0x5

    const-string v9, "main"

    aput-object v9, v6, v0

    const/4 v0, 0x6

    const-string v9, "-v"

    aput-object v9, v6, v0

    const/4 v0, 0x7

    const-string v9, "threadtime"

    aput-object v9, v6, v0

    const/16 v0, 0x8

    const-string v9, "-t"

    aput-object v9, v6, v0

    const/16 v0, 0x9

    .line 965
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v0

    .line 963
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 966
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 967
    invoke-static {v5}, Lcom/uc/crashsdk/e;->a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_2a .. :try_end_78} :catchall_e5

    if-nez v2, :cond_8f

    :try_start_7a
    const-string v0, "[DEBUG] alloc buffer failed!\n"

    .line 970
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception v0

    .line 971
    :try_start_85
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 974
    :goto_88
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_e5

    .line 1011
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-void

    .line 979
    :cond_8f
    :try_start_8f
    sput-boolean v8, Lcom/uc/crashsdk/e;->h:Z

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 983
    :cond_93
    :goto_93
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c0

    add-int/lit8 v0, v0, 0x1

    if-ge v5, v4, :cond_93

    const-string v9, " I auditd "

    .line 988
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_93

    const-string v9, " I liblog "

    .line 989
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_93

    .line 990
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    const-string v6, "\n"

    .line 991
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_bd
    .catchall {:try_start_8f .. :try_end_bd} :catchall_e5

    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 996
    :cond_c0
    :try_start_c0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "[DEBUG] Read %d lines, wrote %d lines.\n"

    new-array v7, v7, [Ljava/lang/Object;

    .line 998
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    .line 996
    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 996
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_dd
    .catchall {:try_start_c0 .. :try_end_dd} :catchall_de

    goto :goto_e2

    :catchall_de
    move-exception v0

    .line 999
    :try_start_df
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1002
    :goto_e2
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_e5

    goto :goto_eb

    :catchall_e5
    move-exception v0

    .line 1008
    :try_start_e6
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z

    .line 1009
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_f2

    .line 1011
    :goto_eb
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1014
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_f2
    move-exception p0

    .line 1011
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "\n"

    const-string v3, "UTF-8"

    :try_start_6
    const-string v0, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n"

    .line 591
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception v0

    .line 592
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_14
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 597
    :try_start_18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Basic Information: \'pid: %d/tid: %d/time: %s\'\n"

    new-array v9, v4, [Ljava/lang/Object;

    .line 599
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 600
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 601
    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 597
    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 602
    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/OutputStream;->write([B)V

    const-string v8, "Cpu Information: \'abi: %s/processor: %s/hardware: %s\'\n"

    new-array v9, v4, [Ljava/lang/Object;

    .line 606
    invoke-static {}, Lcom/uc/crashsdk/e;->e()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    sget-object v10, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    invoke-static {v10}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-static {}, Lcom/uc/crashsdk/e;->S()V

    :cond_58
    sget-object v10, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {}, Lcom/uc/crashsdk/e;->f()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 604
    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_6d
    .catchall {:try_start_18 .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v0

    .line 608
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_72
    const/4 v8, 0x4

    .line 613
    :try_start_73
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Mobile Information: \'model: %s/version: %s/sdk: %d\'\n"

    new-array v10, v4, [Ljava/lang/Object;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v11, v10, v6

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v11, v10, v7

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 615
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 613
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 616
    invoke-virtual {v9, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Build fingerprint: \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 619
    invoke-virtual {v9, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    const-string v9, "Runtime Information: \'start: %s/maxheap: %s/primaryabi: %s/ground: %s\'\n"

    new-array v10, v8, [Ljava/lang/Object;

    .line 621
    new-instance v11, Ljava/util/Date;

    sget-wide v12, Lcom/uc/crashsdk/e;->b:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 623
    invoke-static {v11}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 624
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    .line 625
    invoke-static {}, Lcom/uc/crashsdk/a/g;->d()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 626
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v11

    if-eqz v11, :cond_de

    const-string v11, "fg"

    goto :goto_e0

    :cond_de
    const-string v11, "bg"

    :goto_e0
    aput-object v11, v10, v4

    .line 621
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_ed
    .catchall {:try_start_73 .. :try_end_ed} :catchall_ee

    goto :goto_f2

    :catchall_ee
    move-exception v0

    .line 628
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 633
    :goto_f2
    :try_start_f2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Application Information: \'version: %s/subversion: %s/buildseq: %s/versioncode: %d\'\n"

    new-array v10, v8, [Ljava/lang/Object;

    .line 635
    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {}, Lcom/uc/crashsdk/g;->S()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 636
    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {}, Lcom/uc/crashsdk/a;->c()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    .line 633
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 637
    invoke-virtual {v9, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    const-string v9, "0"

    .line 641
    sget-boolean v10, Lcom/uc/crashsdk/b;->d:Z
    :try_end_123
    .catchall {:try_start_f2 .. :try_end_123} :catchall_180

    const-string v11, ""

    if-eqz v10, :cond_136

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    .line 642
    :try_start_12a
    invoke-static {v7, v12, v13, v9}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 643
    invoke-static {v5, v12, v13, v9}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v10

    move-object v10, v9

    move-object v9, v15

    goto :goto_137

    :cond_136
    move-object v10, v11

    :goto_137
    const-string v12, "CrashSDK Information: \'version: %s/nativeseq: %s/javaseq: %s/arch: %s/target: %s\'\n"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "3.2.0.4"

    aput-object v14, v13, v6

    aput-object v9, v13, v7

    const-string v9, "210105150455"

    aput-object v9, v13, v5

    aput-object v10, v13, v4

    const-string v4, "release"

    aput-object v4, v13, v8

    .line 645
    invoke-static {v0, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    if-nez p1, :cond_15a

    goto :goto_15c

    :cond_15a
    move-object/from16 v11, p1

    :goto_15c
    const/16 v0, 0x2f

    .line 652
    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v7

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Report Name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_17f
    .catchall {:try_start_12a .. :try_end_17f} :catchall_180

    goto :goto_184

    :catchall_180
    move-exception v0

    .line 655
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 660
    :goto_184
    :try_start_184
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_18f

    const-string v0, "UUID"

    .line 662
    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_191

    .line 664
    :cond_18f
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    :goto_191
    const-string v4, "UUID: %s\n"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    .line 666
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Log Type: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1bc
    .catchall {:try_start_184 .. :try_end_1bc} :catchall_1bd

    goto :goto_1c1

    :catchall_1bd
    move-exception v0

    .line 670
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 675
    :goto_1c1
    :try_start_1c1
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1cd

    const-string v0, "(none)"

    .line 679
    :cond_1cd
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1e5
    .catchall {:try_start_1c1 .. :try_end_1e5} :catchall_1e6

    goto :goto_1ea

    :catchall_1e6
    move-exception v0

    .line 681
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 685
    :goto_1ea
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 689
    :try_start_1ed
    invoke-static {v1, v3}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 691
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_20a

    .line 692
    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "HEADER"

    .line 693
    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 694
    sput-boolean v7, Lcom/uc/crashsdk/e;->h:Z
    :try_end_205
    .catchall {:try_start_1ed .. :try_end_205} :catchall_206

    goto :goto_20a

    :catchall_206
    move-exception v0

    .line 696
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 699
    :cond_20a
    :goto_20a
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4

    .line 3110
    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 3112
    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/b;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3111
    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3114
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3331
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p0

    .line 3332
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 2765
    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method static b(Z)V
    .registers 4

    .line 2301
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 2302
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_1b

    .line 2305
    invoke-static {}, Lcom/uc/crashsdk/g;->s()Z

    move-result v0

    :cond_1b
    if-nez v0, :cond_1e

    return-void

    :cond_1e
    if-eqz p0, :cond_31

    .line 2314
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object p0

    .line 2315
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2316
    invoke-static {}, Lcom/uc/crashsdk/e;->j()V

    .line 2317
    invoke-static {p0, v2, v2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V

    :cond_30
    return-void

    .line 2320
    :cond_31
    invoke-static {v1, v2}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception p0

    .line 2322
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(I[Ljava/lang/Object;)Z
    .registers 8

    const/16 v0, 0x1c3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_65

    const/16 v0, 0x1c4

    if-eq p0, v0, :cond_15

    .line 472
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_f

    return v2

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 465
    :cond_15
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_22

    if-eqz p1, :cond_1c

    goto :goto_22

    :cond_1c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 466
    :cond_22
    :goto_22
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    .line 467
    aget-object p1, p1, v1

    check-cast p1, Lcom/uc/crashsdk/e$d;

    .line 468
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/uc/crashsdk/e$d;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-wide v4, p1, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/uc/crashsdk/e$d;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    iget p1, p1, Lcom/uc/crashsdk/e$d;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d %d %d %d"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result p0

    return p0

    .line 458
    :cond_65
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_72

    if-eqz p1, :cond_6c

    goto :goto_72

    :cond_6c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 459
    :cond_72
    :goto_72
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    .line 460
    aget-object p1, p1, v1

    check-cast p1, Lcom/uc/crashsdk/e$d;

    .line 461
    invoke-static {p0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/io/File;)Z
    .registers 5

    .line 2475
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    .line 2478
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_e

    return v1

    :cond_e
    const/16 v2, 0x2e

    .line 2482
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gtz v2, :cond_17

    return v1

    :cond_17
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 2487
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java"

    .line 2488
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "ucebujava"

    .line 2489
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "jni"

    .line 2490
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "ucebujni"

    .line 2491
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "unexp"

    .line 2492
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "anr"

    .line 2493
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    goto :goto_4f

    :cond_4e
    return v1

    :cond_4f
    :goto_4f
    return v3
.end method

.method static synthetic c(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->C:I

    return p0
.end method

.method static c()V
    .registers 1

    const/4 v0, 0x0

    .line 291
    sput-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    return-void
.end method

.method private static c(Ljava/io/OutputStream;)V
    .registers 10

    const-string v0, "UTF-8"

    .line 1239
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    .line 1240
    invoke-static {}, Lcom/uc/crashsdk/b;->l()Ljava/lang/String;

    move-result-object v0

    .line 1241
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    const-wide/16 v1, 0x1

    const/16 v4, 0x11

    .line 1242
    invoke-static {v4, v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_3a

    .line 1243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1245
    :try_start_1f
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1247
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v0

    .line 1249
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1253
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v0

    .line 1254
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1257
    :goto_35
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z

    .line 1258
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1260
    :cond_3a
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z

    return-void

    :cond_3d
    const/4 v1, 0x0

    const/16 v4, 0x384

    .line 1267
    :try_start_40
    invoke-static {}, Lcom/uc/crashsdk/g;->H()I

    move-result v4

    .line 1268
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/self/fd"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 1271
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "opened file count: %d, write limit: %d.\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    array-length v8, v1

    .line 1273
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1271
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1273
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1271
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7f

    :cond_71
    const-string v3, "[DEBUG] listFiles failed!\n"

    .line 1275
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_7a
    .catchall {:try_start_40 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception v3

    .line 1277
    invoke-static {v3, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_7f
    if-eqz v1, :cond_c6

    .line 1283
    :try_start_81
    array-length v3, v1

    if-lt v3, v4, :cond_c6

    const-string v3, "opened files:\n"

    .line 1284
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_92
    .catchall {:try_start_81 .. :try_end_92} :catchall_c2

    .line 1288
    :try_start_92
    array-length v4, v1

    :goto_93
    if-ge v2, v4, :cond_b6

    aget-object v5, v1, v2

    .line 1289
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    .line 1290
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 1292
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_af
    .catchall {:try_start_92 .. :try_end_af} :catchall_b2

    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    :catchall_b2
    move-exception v1

    .line 1294
    :try_start_b3
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1297
    :cond_b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_c1
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_c2

    goto :goto_c6

    :catchall_c2
    move-exception v0

    .line 1299
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1303
    :cond_c6
    :goto_c6
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method static c(Z)V
    .registers 4

    .line 3768
    sget-boolean v0, Lcom/uc/crashsdk/e;->R:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    if-eqz p0, :cond_19

    .line 3769
    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_19

    :cond_f
    if-eqz p0, :cond_18

    .line 3772
    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_19
    if-eqz v1, :cond_2b

    .line 3778
    sget-object p0, Lcom/uc/crashsdk/e;->S:Lcom/uc/crashsdk/a/e;

    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3779
    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    :cond_26
    const-wide/16 v0, 0xbb8

    .line 3781
    invoke-static {v2, p0, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_2b
    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .registers 1

    .line 59
    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static c(Ljava/lang/String;)Z
    .registers 3

    .line 3120
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3126
    :cond_6
    :try_start_6
    invoke-static {p0}, Lcom/uc/crashsdk/e;->o(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return p0

    :catchall_b
    move-exception p0

    .line 3127
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method static synthetic d(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->D:I

    return p0
.end method

.method static d()Ljava/lang/String;
    .registers 1

    .line 295
    sget-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 298
    invoke-static {v0}, Lcom/uc/crashsdk/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    sput-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    const-string p0, "https://errlogos.umeng.com/upload"

    return-object p0

    :cond_5
    const-string p0, "https://errlog.umeng.com/upload"

    return-object p0
.end method

.method private static d(Ljava/io/OutputStream;)V
    .registers 13

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1311
    :try_start_4
    invoke-static {}, Lcom/uc/crashsdk/g;->I()I

    move-result v3
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1c

    .line 1312
    :try_start_8
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/task"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_16

    return-void

    .line 1318
    :cond_16
    array-length v4, v2
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1a

    if-ge v4, v3, :cond_23

    return-void

    :catchall_1a
    move-exception v4

    goto :goto_1f

    :catchall_1c
    move-exception v4

    const/16 v3, 0x12c

    .line 1322
    :goto_1f
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :cond_23
    if-nez v2, :cond_26

    return-void

    :cond_26
    :try_start_26
    const-string v5, "threads info:\n"

    .line 1331
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 1332
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "threads count: %d, dump limit: %d.\n"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 1334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v8, v4

    .line 1332
    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1334
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1332
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, " tid     name\n"

    .line 1336
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1337
    array-length v3, v2

    const/4 v5, 0x0

    :goto_59
    if-ge v5, v3, :cond_92

    aget-object v6, v2, v5

    .line 1338
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "comm"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x80

    .line 1339
    invoke-static {v8, v9, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v8

    .line 1340
    invoke-static {v8}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1341
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%5s %s\n"

    new-array v11, v7, [Ljava/lang/Object;

    .line 1342
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v1

    aput-object v8, v11, v4

    .line 1341
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1343
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_8b
    .catchall {:try_start_26 .. :try_end_8b} :catchall_8e

    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :catchall_8e
    move-exception v0

    .line 1345
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1349
    :cond_92
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "activity"

    .line 3509
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 3513
    :cond_c
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    .line 3517
    :cond_13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 3519
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 3520
    iget v4, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v4, v1, :cond_1b

    .line 3521
    sput-boolean v3, Lcom/uc/crashsdk/e;->O:Z

    .line 3525
    invoke-static {}, Lcom/uc/crashsdk/e;->N()Z

    move-result p0

    if-eqz p0, :cond_49

    .line 3526
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ANR occurred in process: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    :cond_49
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_54

    const/16 p0, 0x82

    .line 3531
    iget-object v0, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_54
    const/4 v0, 0x1

    :cond_55
    if-nez v0, :cond_5e

    .line 3535
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_5e

    .line 3537
    invoke-static {}, Lcom/uc/crashsdk/e;->V()V

    :cond_5e
    return v3
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 3

    .line 4221
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, ".so"

    .line 4222
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4224
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_25

    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    .line 4227
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic e(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->E:I

    return p0
.end method

.method public static e(Z)I
    .registers 2

    if-eqz p0, :cond_10

    .line 4468
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_14

    :cond_e
    const/4 v0, 0x0

    goto :goto_14

    .line 4472
    :cond_10
    invoke-static {}, Lcom/uc/crashsdk/f;->b()I

    move-result v0

    .line 4475
    :goto_14
    invoke-static {p0}, Lcom/uc/crashsdk/f;->b(Z)I

    move-result p0

    if-le p0, v0, :cond_1b

    return p0

    :cond_1b
    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 11

    .line 705
    const-class v0, Ljava/lang/String;

    const-string v1, ","

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 706
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    return-object v0

    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 711
    :try_start_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_4f

    .line 712
    const-class v5, Landroid/os/Build;

    const-string v6, "SUPPORTED_ABIS"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 713
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 714
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4f

    .line 715
    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_4f

    .line 716
    check-cast v5, [Ljava/lang/String;

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_37
    if-ge v8, v7, :cond_47

    aget-object v10, v5, v8

    if-nez v9, :cond_40

    .line 721
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_40
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_37

    .line 726
    :cond_47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_4e

    goto :goto_4f

    :catchall_4e
    nop

    .line 733
    :cond_4f
    :goto_4f
    sget-object v5, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 737
    :try_start_57
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_5c

    .line 738
    :try_start_59
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5d

    goto :goto_5e

    :catchall_5c
    move-object v5, v4

    :catchall_5d
    move-object v6, v4

    .line 742
    :goto_5e
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_67

    .line 744
    sput-object v5, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 746
    :cond_67
    invoke-static {v6}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_98

    if-eqz v7, :cond_96

    .line 748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    goto :goto_98

    .line 751
    :cond_96
    sput-object v6, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    :cond_98
    :goto_98
    :try_start_98
    const-string v5, "android.os.SystemProperties"

    .line 760
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "get"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v0, v8, v2

    aput-object v0, v8, v3

    .line 761
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_cf

    .line 764
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "ro.product.cpu.abi"

    aput-object v6, v5, v2

    aput-object v4, v5, v3

    .line 765
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_be
    .catchall {:try_start_98 .. :try_end_be} :catchall_d1

    :try_start_be
    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "ro.product.cpu.abi2"

    aput-object v7, v6, v2

    aput-object v4, v6, v3

    .line 766
    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_cc
    .catchall {:try_start_be .. :try_end_cc} :catchall_cd

    goto :goto_d7

    :catchall_cd
    move-exception v0

    goto :goto_d3

    :cond_cf
    move-object v0, v4

    goto :goto_d8

    :catchall_d1
    move-exception v0

    move-object v5, v4

    .line 768
    :goto_d3
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_d7
    move-object v4, v5

    .line 772
    :goto_d8
    :try_start_d8
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10c

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10c

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 776
    :cond_10c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_145

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_140
    .catchall {:try_start_d8 .. :try_end_140} :catchall_141

    goto :goto_145

    :catchall_141
    move-exception v0

    .line 780
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 783
    :cond_145
    :goto_145
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2

    .line 4508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 4509
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/OutputStream;)V
    .registers 12

    const-string v0, "UTF-8"

    .line 1389
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v1, "solib build id:\n"

    .line 1394
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v1

    .line 1395
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_15
    const/4 v1, 0x0

    .line 1402
    :try_start_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1403
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/maps"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_c3

    .line 1404
    :try_start_27
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_bf

    .line 1405
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    const-string v5, ".so"

    .line 1407
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v5, 0x2f

    .line 1408
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2e

    .line 1412
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/data/"

    .line 1416
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_5e

    sget-object v5, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    .line 1417
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v5, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v5, 0x1

    :goto_5f
    if-eqz v5, :cond_2e

    .line 1419
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 1423
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    sget-boolean v5, Lcom/uc/crashsdk/e;->af:Z
    :try_end_6c
    .catchall {:try_start_2e .. :try_end_6c} :catchall_bd

    const/4 v8, 0x2

    if-eqz v5, :cond_9b

    .line 1429
    :try_start_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SOBUILDID"

    const-string v10, "$^%s`%s^$"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v1, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_95
    .catchall {:try_start_6f .. :try_end_95} :catchall_96

    goto :goto_2e

    :catchall_96
    move-exception v1

    .line 1431
    :try_start_97
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_2e

    :cond_9b
    const/4 v5, 0x3

    const-wide/16 v9, 0x0

    .line 1435
    invoke-static {v5, v9, v10, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1436
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s: %s\n"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v5, v8, v7

    invoke-static {v9, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1437
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1436
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_b7
    .catchall {:try_start_97 .. :try_end_b7} :catchall_bd

    goto/16 :goto_2e

    .line 1443
    :cond_b9
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_cb

    :catchall_bd
    move-exception v0

    goto :goto_c1

    :catchall_bf
    move-exception v0

    move-object v4, v1

    :goto_c1
    move-object v1, v3

    goto :goto_c5

    :catchall_c3
    move-exception v0

    move-object v4, v1

    .line 1440
    :goto_c5
    :try_start_c5
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_d2

    .line 1443
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1444
    :goto_cb
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1446
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_d2
    move-exception p0

    .line 1443
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1444
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static synthetic f(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->F:I

    return p0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .line 790
    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 791
    invoke-static {}, Lcom/uc/crashsdk/e;->S()V

    .line 793
    :cond_b
    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 59
    sput-object p0, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    return-object p0
.end method

.method private static f(Ljava/io/OutputStream;)V
    .registers 9

    :try_start_0
    const-string v0, "recent status:\n"

    const-string v1, "UTF-8"

    .line 1847
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception v0

    .line 1848
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1854
    :try_start_12
    sget-boolean v2, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v2, :cond_1d

    const-string v2, "LASTVER"

    .line 1855
    invoke-static {v2}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 1857
    :cond_1d
    invoke-static {}, Lcom/uc/crashsdk/a;->m()Ljava/lang/String;

    move-result-object v2

    .line 1859
    :goto_21
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "last version: \'%s\'\n"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 1860
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1859
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    .line 1861
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1866
    :goto_3b
    :try_start_3b
    sget-object v2, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_db

    .line 1867
    :try_start_3e
    sget-object v3, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    if-eqz v3, :cond_59

    .line 1868
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generating log: %s\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1869
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1868
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1872
    :cond_59
    sget v3, Lcom/uc/crashsdk/e;->s:I

    if-gtz v3, :cond_63

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a4

    .line 1873
    :cond_63
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generated %d logs, recent are:\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget v6, Lcom/uc/crashsdk/e;->s:I

    .line 1875
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1873
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1875
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1873
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1876
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1877
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "* %s\n"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    .line 1878
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1877
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_82

    .line 1881
    :cond_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_3e .. :try_end_a5} :catchall_d8

    .line 1883
    :try_start_a5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dumping all threads: %s\n"

    new-array v4, v1, [Ljava/lang/Object;

    sget-boolean v5, Lcom/uc/crashsdk/e;->u:Z

    .line 1884
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1883
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1884
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1883
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1885
    sget-object v3, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    if-eqz v3, :cond_df

    const-string v4, "dumping threads: %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 1886
    invoke-static {v2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 1887
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1886
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_d7
    .catchall {:try_start_a5 .. :try_end_d7} :catchall_db

    goto :goto_df

    :catchall_d8
    move-exception v0

    .line 1881
    :try_start_d9
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    :try_start_da
    throw v0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v0

    .line 1889
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1893
    :cond_df
    :goto_df
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic f(Z)Z
    .registers 1

    .line 59
    sput-boolean p0, Lcom/uc/crashsdk/e;->K:Z

    return p0
.end method

.method static synthetic g(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->G:I

    return p0
.end method

.method private static g(Ljava/lang/String;)J
    .registers 10

    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "android.os.SystemProperties"

    .line 127
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 128
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 131
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_36

    return-wide v0

    :catchall_36
    move-exception p0

    .line 134
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_3a
    return-wide v0
.end method

.method static g()Ljava/lang/String;
    .registers 8

    const-string v0, " kB\n"

    .line 847
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaMax:    "

    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "JavaTotal:  "

    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "JavaFree:   "

    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NativeHeap: "

    .line 851
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NativeAllocated: "

    .line 856
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NativeFree: "

    .line 857
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_75
    .catchall {:try_start_2 .. :try_end_75} :catchall_c0

    .line 861
    :try_start_75
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-eqz v2, :cond_bb

    .line 863
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 864
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v2, "availMem:   "

    .line 865
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "threshold:  "

    .line 867
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lowMemory:  "

    .line 868
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b6
    .catchall {:try_start_75 .. :try_end_b6} :catchall_b7

    goto :goto_bb

    :catchall_b7
    move-exception v0

    .line 870
    :try_start_b8
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 874
    :cond_bb
    :goto_bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_c0

    return-object v0

    :catchall_c0
    move-exception v0

    .line 875
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method static synthetic h(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->H:I

    return p0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    .line 1613
    sget-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1617
    :cond_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1618
    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "[^0-9a-zA-Z-.]"

    const-string v1, "-"

    .line 276
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    const-string p0, "unknown"

    :goto_b
    return-object p0
.end method

.method static synthetic i(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->I:I

    return p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_24

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 308
    :cond_24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 309
    invoke-static {}, Lcom/uc/crashsdk/e;->O()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 310
    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/uc/crashsdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 311
    invoke-static {v3}, Lcom/uc/crashsdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p0, v1, v2

    const-string p0, "%s%s_%s_%s_%s_%s_"

    .line 308
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static i()Z
    .registers 1

    .line 2243
    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    return v0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 368
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 369
    invoke-static {}, Lcom/uc/crashsdk/e;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 370
    invoke-static {}, Lcom/uc/crashsdk/e;->P()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "%s%s_%s_%s.log"

    .line 368
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()V
    .registers 2

    .line 2330
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2331
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2332
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    .line 2333
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .registers 4

    .line 3083
    sget-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3084
    sget-object v0, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 3086
    :try_start_b
    invoke-static {}, Lcom/uc/crashsdk/b;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    const/4 v3, 0x1

    .line 3085
    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 3088
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1

    .line 3090
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    return-object v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1602
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 1603
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_11

    .line 1605
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1607
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, ""

    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1898
    invoke-static {}, Lcom/uc/crashsdk/g;->w()Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-static {}, Lcom/uc/crashsdk/g;->v()Z

    move-result v1

    .line 1897
    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1902
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1903
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 1905
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_20
    return-object v0
.end method

.method public static l()V
    .registers 4

    .line 3268
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 3271
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x19b

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method static m()Ljava/lang/String;
    .registers 1

    .line 3287
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;)[Z
    .registers 8

    .line 2529
    invoke-static {}, Lcom/uc/crashsdk/g;->v()Z

    move-result v0

    .line 2530
    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    if-eqz v1, :cond_6d

    :cond_d
    const-string v3, ".tmp"

    .line 2534
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6b

    const-string v3, ".ec"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_6b

    .line 2547
    :cond_1e
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_27

    const/4 v3, 0x0

    :cond_27
    const/4 v4, 0x0

    :cond_28
    const/16 v5, 0x5f

    .line 2552
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_34

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_34
    if-gez v3, :cond_28

    const/16 v3, 0x8

    if-eq v4, v3, :cond_3b

    goto :goto_6b

    .line 2566
    :cond_3b
    invoke-static {}, Lcom/uc/crashsdk/g;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".log"

    .line 2567
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 2569
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_6b

    .line 2578
    :cond_54
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    :cond_5a
    :goto_5a
    const/4 v0, 0x0

    goto :goto_6d

    .line 2585
    :cond_5c
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2586
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2587
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-eq v3, p0, :cond_6d

    goto :goto_5a

    :cond_6b
    :goto_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6d
    :goto_6d
    const/4 p0, 0x2

    new-array p0, p0, [Z

    aput-boolean v0, p0, v2

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    return-object p0
.end method

.method public static n()V
    .registers 2

    .line 3297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/uc/crashsdk/e;->b:J

    return-void
.end method

.method private static n(Ljava/lang/String;)Z
    .registers 18

    move-object/from16 v1, p0

    .line 2777
    sget-object v2, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 2778
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "customlog"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2779
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    const/4 v4, 0x0

    .line 2780
    invoke-static {v3, v0, v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v0

    .line 2782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2783
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_aa

    .line 2786
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "([^\\n\\r\\t\\s]+) (\\d+) (\\d+)"

    .line 2787
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2790
    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const/4 v0, 0x0

    .line 2791
    :goto_41
    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2792
    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2793
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 2794
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_41

    .line 2798
    :cond_56
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_ee

    sub-long v13, v5, v11

    const-wide/32 v15, 0x5265c00

    const/4 v8, 0x3

    cmp-long v0, v13, v15

    if-gez v0, :cond_76

    .line 2803
    :try_start_68
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_71
    .catchall {:try_start_68 .. :try_end_70} :catchall_ee

    goto :goto_78

    :catch_71
    move-exception v0

    .line 2804
    :try_start_72
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_77

    :cond_76
    move-wide v11, v5

    :goto_77
    const/4 v0, 0x0

    .line 2811
    :goto_78
    invoke-static {}, Lcom/uc/crashsdk/g;->D()I

    move-result v13

    if-ltz v13, :cond_82

    if-lt v0, v13, :cond_82

    const/4 v13, 0x1

    goto :goto_83

    :cond_82
    const/4 v13, 0x0

    :goto_83
    add-int/2addr v0, v9

    .line 2819
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s %d %d"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v4

    .line 2820
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v8, v11

    .line 2819
    invoke-static {v14, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2821
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v7, v8, v10, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    goto :goto_ac

    :cond_aa
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_ac
    if-nez v0, :cond_c4

    .line 2829
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s %d 1\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v4

    .line 2830
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v9

    .line 2829
    invoke-static {v0, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2831
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_c4
    .catchall {:try_start_72 .. :try_end_c4} :catchall_ee

    :cond_c4
    const/4 v1, 0x0

    .line 2836
    :try_start_c5
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ca} :catch_e1
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_df

    .line 2837
    :try_start_ca
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2838
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v0, v4, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d5} :catch_dc
    .catchall {:try_start_ca .. :try_end_d5} :catchall_d9

    .line 2842
    :try_start_d5
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_ee

    goto :goto_e8

    :catchall_d9
    move-exception v0

    move-object v1, v5

    goto :goto_ea

    :catch_dc
    move-exception v0

    move-object v1, v5

    goto :goto_e2

    :catchall_df
    move-exception v0

    goto :goto_ea

    :catch_e1
    move-exception v0

    .line 2839
    :goto_e2
    :try_start_e2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_df

    .line 2842
    :try_start_e5
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2844
    :goto_e8
    monitor-exit v2

    return v13

    .line 2842
    :goto_ea
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_ee
    move-exception v0

    .line 2844
    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_e5 .. :try_end_f0} :catchall_ee

    throw v0
.end method

.method public static o()V
    .registers 5

    .line 3343
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 3350
    :try_start_a
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "unique"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3351
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/16 v2, 0x30

    const/4 v3, 0x0

    .line 3352
    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_6b

    if-eqz v2, :cond_4b

    .line 3356
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x24

    if-eq v3, v4, :cond_3c

    goto :goto_4c

    :cond_3c
    const-string v0, "[^0-9a-zA-Z-]"

    const-string v3, "-"

    .line 3360
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_44} :catch_47
    .catchall {:try_start_33 .. :try_end_44} :catchall_45

    goto :goto_4c

    :catchall_45
    move-exception v0

    goto :goto_6e

    :catch_47
    move-exception v0

    .line 3362
    :try_start_48
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    :cond_4b
    move-object v0, v2

    .line 3368
    :cond_4c
    :goto_4c
    :try_start_4c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 3369
    invoke-static {}, Lcom/uc/crashsdk/b;->D()V

    .line 3370
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3371
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 3372
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_6b

    goto :goto_72

    :catchall_6b
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 3375
    :goto_6e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 3379
    :cond_72
    :goto_72
    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    return-void
.end method

.method private static o(Ljava/lang/String;)Z
    .registers 15

    .line 3134
    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 3135
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 3137
    invoke-static {}, Lcom/uc/crashsdk/b;->i()Ljava/lang/String;

    move-result-object v1

    const-string v3, "all:1"

    .line 3136
    invoke-static {v1, v3, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3139
    invoke-static {v1}, Lcom/uc/crashsdk/e;->p(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    .line 3142
    :cond_18
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v3, "all"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_33

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_ac

    :cond_33
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_44
    const-string v1, "java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "jni"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "anr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "unexp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_67

    :cond_65
    const/4 p0, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 p0, 0x1

    :goto_68
    if-eqz p0, :cond_7f

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v4, "crash"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "crash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_7f
    if-nez p0, :cond_96

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_96

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_96
    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ab

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_ab
    const/4 p0, 0x1

    :goto_ac
    if-eqz p0, :cond_104

    int-to-long v4, p0

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    cmp-long p0, v4, v8

    if-gez p0, :cond_ef

    const-wide/16 v10, 0x1e

    const-wide/16 v12, -0x2

    cmp-long p0, v4, v12

    if-nez p0, :cond_c2

    const-wide/16 v10, 0x7

    goto :goto_d3

    :cond_c2
    const-wide/16 v12, -0x3

    cmp-long p0, v4, v12

    if-nez p0, :cond_cb

    const-wide/16 v10, 0xf

    goto :goto_d3

    :cond_cb
    const-wide/16 v12, -0x4

    cmp-long p0, v4, v12

    if-nez p0, :cond_d3

    const-wide/16 v10, 0x3c

    .line 3143
    :cond_d3
    :goto_d3
    invoke-static {}, Lcom/uc/crashsdk/a;->b()J

    move-result-wide v4

    cmp-long p0, v4, v8

    if-nez p0, :cond_de

    const-wide/16 v4, -0x1

    goto :goto_e8

    :cond_de
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-wide/32 v4, 0x5265c00

    div-long v4, v12, v4

    :goto_e8
    cmp-long p0, v4, v10

    if-gtz p0, :cond_ee

    move-wide v4, v6

    goto :goto_ef

    :cond_ee
    sub-long/2addr v4, v10

    :cond_ef
    :goto_ef
    cmp-long p0, v4, v6

    if-nez p0, :cond_f5

    :goto_f3
    const/4 v2, 0x1

    goto :goto_104

    :cond_f5
    cmp-long p0, v4, v8

    if-gtz p0, :cond_fa

    goto :goto_f3

    :cond_fa
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    rem-long/2addr v6, v4

    cmp-long p0, v6, v8

    if-nez p0, :cond_104

    goto :goto_f3

    :cond_104
    :goto_104
    monitor-exit v0

    return v2

    :catchall_106
    move-exception p0

    .line 3144
    monitor-exit v0
    :try_end_108
    .catchall {:try_start_3 .. :try_end_108} :catchall_106

    throw p0
.end method

.method public static p()Ljava/lang/String;
    .registers 1

    .line 3383
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static p(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\\|"

    const/16 v2, 0x1e

    .line 3150
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 3151
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_47

    aget-object v4, p0, v3

    const/4 v5, 0x3

    const-string v6, ":"

    .line 3152
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 3153
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_44

    .line 3154
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3158
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    const/4 v6, 0x1

    .line 3164
    :try_start_2c
    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v4

    .line 3165
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3169
    :goto_3d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_47
    return-object v0
.end method

.method static q()V
    .registers 5

    const/4 v0, 0x0

    .line 3555
    sput-boolean v0, Lcom/uc/crashsdk/e;->O:Z

    .line 3556
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x3

    .line 3558
    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x1a0

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v3, 0x2af8

    invoke-static {v1, v2, v3, v4}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3563
    :cond_16
    invoke-static {}, Lcom/uc/crashsdk/e;->U()Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    .line 3568
    :cond_1d
    sput v0, Lcom/uc/crashsdk/e;->N:I

    .line 3569
    invoke-static {}, Lcom/uc/crashsdk/e;->W()V

    return-void
.end method

.method private static q(Ljava/lang/String;)V
    .registers 4

    .line 3301
    invoke-static {}, Lcom/uc/crashsdk/g;->q()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3306
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/uc/crashsdk/e;->aa()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v0

    .line 3307
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_f
    if-eqz p0, :cond_4c

    const-string v0, ""

    .line 3311
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_4c

    .line 3316
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v0

    .line 3317
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 3319
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3322
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copy log to: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_48

    return-void

    :catchall_48
    move-exception p0

    .line 3324
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private static r(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "$^%s^$"

    .line 3387
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r()V
    .registers 1

    .line 3799
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3800
    new-instance v0, Lcom/uc/crashsdk/e;

    invoke-direct {v0}, Lcom/uc/crashsdk/e;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static s()V
    .registers 1

    .line 3804
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static t()Z
    .registers 1

    .line 3828
    sget-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/uc/crashsdk/e;->Z()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public static u()Ljava/lang/Throwable;
    .registers 1

    .line 4028
    sget-object v0, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static v()I
    .registers 2

    .line 4060
    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 4061
    sget v0, Lcom/uc/crashsdk/e;->Z:I

    return v0

    :cond_a
    const/16 v0, 0x64

    return v0
.end method

.method public static w()V
    .registers 6

    .line 4067
    invoke-static {}, Lcom/uc/crashsdk/g;->o()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    return-void

    .line 4075
    :cond_c
    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 4078
    :goto_17
    new-instance v3, Lcom/uc/crashsdk/a/e;

    const/16 v5, 0x191

    invoke-direct {v3, v5}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    if-nez v2, :cond_24

    return-void

    .line 4087
    :cond_24
    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x192

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v2, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    .line 4088
    invoke-static {v4, v2, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method static x()V
    .registers 4

    .line 4115
    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_18

    .line 4118
    sget-object v0, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 4119
    sget-object v1, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method public static y()Z
    .registers 3

    .line 4183
    sget-object v0, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    monitor-enter v0

    .line 4184
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    if-eqz v1, :cond_14

    sget-boolean v2, Lcom/uc/crashsdk/e;->W:Z

    if-nez v2, :cond_14

    .line 4185
    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 4186
    sput-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 4187
    monitor-exit v0

    return v1

    .line 4189
    :cond_14
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static z()V
    .registers 4

    .line 4316
    invoke-static {}, Lcom/uc/crashsdk/g;->q()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 4320
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x193

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "original exception is: "

    const-string v4, "crashsdk"

    const-string v5, "Call java default handler: "

    const-string v6, "DEBUG"

    .line 3835
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_1c

    .line 3836
    :cond_16
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v9, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v9, 0x0

    .line 3839
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_c5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_c5

    const-string v0, "another thread is generating java report!"

    .line 3841
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current thread exception is:"

    .line 3842
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    const/4 v13, 0x0

    .line 3847
    :cond_3c
    sget-boolean v0, Lcom/uc/crashsdk/e;->V:Z
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_52a

    if-nez v0, :cond_4e

    const-wide/16 v14, 0x3e8

    .line 3849
    :try_start_42
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4b

    :catchall_46
    move-exception v0

    move-object v14, v0

    .line 3850
    :try_start_48
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_4b
    add-int/2addr v13, v7

    if-lt v13, v12, :cond_3c

    .line 3854
    :cond_4e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_52a

    if-eqz p3, :cond_6d

    .line 3974
    :try_start_57
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_67

    if-eqz v0, :cond_6d

    if-nez v9, :cond_6d

    .line 3977
    :try_start_5f
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_64

    const/4 v3, 0x1

    goto :goto_6e

    :catchall_64
    move-exception v0

    const/4 v3, 0x1

    goto :goto_69

    :catchall_67
    move-exception v0

    const/4 v3, 0x0

    .line 3979
    :goto_69
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x0

    :goto_6e
    if-nez v3, :cond_75

    if-nez v9, :cond_75

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_75
    :try_start_75
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7e

    :catchall_79
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_7e
    :try_start_7e
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_89

    const/4 v0, 0x1

    .line 3997
    :cond_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a1

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a1

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_a1
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_b5

    if-nez v9, :cond_b5

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_b0
    .catchall {:try_start_7e .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :cond_b5
    :goto_b5
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_c4

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_c4
    return-void

    .line 3861
    :cond_c5
    :try_start_c5
    sput-object v2, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    if-nez v9, :cond_146

    .line 3863
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_146

    .line 3864
    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_c5 .. :try_end_d6} :catchall_52a

    if-eqz p3, :cond_ee

    .line 3974
    :try_start_d8
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_e8

    if-eqz v0, :cond_ee

    if-nez v9, :cond_ee

    .line 3977
    :try_start_e0
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e5

    const/4 v3, 0x1

    goto :goto_ef

    :catchall_e5
    move-exception v0

    const/4 v3, 0x1

    goto :goto_ea

    :catchall_e8
    move-exception v0

    const/4 v3, 0x0

    .line 3979
    :goto_ea
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_ef

    :cond_ee
    const/4 v3, 0x0

    :goto_ef
    if-nez v3, :cond_f6

    if-nez v9, :cond_f6

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_f6
    :try_start_f6
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fa

    goto :goto_ff

    :catchall_fa
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_ff
    :try_start_ff
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_10a

    const/4 v0, 0x1

    .line 3997
    :cond_10a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_122

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_122

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_122
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_136

    if-nez v9, :cond_136

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_131
    .catchall {:try_start_ff .. :try_end_131} :catchall_132

    goto :goto_136

    :catchall_132
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :cond_136
    :goto_136
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_145

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_145
    return-void

    .line 3868
    :cond_146
    :try_start_146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "encryptLog: "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", zipCrashLog: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3869
    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3868
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    sget-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_175

    const-string v0, "the set zip log to false stack is:"

    .line 3871
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    sget-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3874
    :cond_175
    sget-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_183

    const-string v0, "the set encrypt to true stack is:"

    .line 3875
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    sget-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_183
    const-string v0, "begin to generate java report"

    .line 3878
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catchall {:try_start_146 .. :try_end_188} :catchall_52a

    .line 3883
    :try_start_188
    invoke-direct/range {p0 .. p0}, Lcom/uc/crashsdk/e;->M()V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_18c

    goto :goto_191

    :catchall_18c
    move-exception v0

    move-object v13, v0

    .line 3884
    :try_start_18e
    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_52a

    .line 3891
    :goto_191
    :try_start_191
    invoke-static {}, Lcom/uc/crashsdk/g;->t()Z

    move-result v14
    :try_end_195
    .catchall {:try_start_191 .. :try_end_195} :catchall_1c3

    .line 3892
    :try_start_195
    invoke-static {}, Lcom/uc/crashsdk/g;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a3

    const-string v15, ""

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1ab

    :cond_1a3
    invoke-static {}, Lcom/uc/crashsdk/e;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1ab
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1be
    .catchall {:try_start_195 .. :try_end_1be} :catchall_1c1

    move-object v10, v0

    const/4 v11, 0x0

    goto :goto_1ed

    :catchall_1c1
    move-exception v0

    goto :goto_1c5

    :catchall_1c3
    move-exception v0

    const/4 v14, 0x0

    .line 3894
    :goto_1c5
    :try_start_1c5
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get java log name failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    .line 3897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_1eb
    .catchall {:try_start_1c5 .. :try_end_1eb} :catchall_52a

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1ed
    const-string v15, "omit java crash"

    const-string v13, "java"

    if-nez v9, :cond_313

    .line 3904
    :try_start_1f3
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V
    :try_end_1f6
    .catchall {:try_start_1f3 .. :try_end_1f6} :catchall_20a

    .line 3905
    :try_start_1f6
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_201

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_20e

    :cond_201
    invoke-static {v12}, Lcom/uc/crashsdk/f;->a(I)V
    :try_end_204
    .catchall {:try_start_1f6 .. :try_end_204} :catchall_205

    goto :goto_20e

    :catchall_205
    move-exception v0

    :try_start_206
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_209
    .catchall {:try_start_206 .. :try_end_209} :catchall_20a

    goto :goto_20e

    :catchall_20a
    move-exception v0

    .line 3906
    :try_start_20b
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_20e
    .catchall {:try_start_20b .. :try_end_20e} :catchall_528

    .line 3910
    :goto_20e
    :try_start_20e
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_21a
    .catchall {:try_start_20e .. :try_end_21a} :catchall_21b

    goto :goto_21f

    :catchall_21b
    move-exception v0

    .line 3912
    :try_start_21c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_21f
    if-eqz v14, :cond_294

    .line 3917
    invoke-static {v6, v15}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_224
    .catchall {:try_start_21c .. :try_end_224} :catchall_528

    if-eqz p3, :cond_23c

    .line 3974
    :try_start_226
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_22a
    .catchall {:try_start_226 .. :try_end_22a} :catchall_236

    if-eqz v0, :cond_23c

    if-nez v9, :cond_23c

    .line 3977
    :try_start_22e
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_231
    .catchall {:try_start_22e .. :try_end_231} :catchall_233

    const/4 v3, 0x1

    goto :goto_23d

    :catchall_233
    move-exception v0

    const/4 v3, 0x1

    goto :goto_238

    :catchall_236
    move-exception v0

    const/4 v3, 0x0

    .line 3979
    :goto_238
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_23d

    :cond_23c
    const/4 v3, 0x0

    :goto_23d
    if-nez v3, :cond_244

    if-nez v9, :cond_244

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_244
    :try_start_244
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_247
    .catchall {:try_start_244 .. :try_end_247} :catchall_248

    goto :goto_24d

    :catchall_248
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_24d
    :try_start_24d
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_258

    const/4 v0, 0x1

    .line 3997
    :cond_258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_270

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_270

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_270
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_284

    if-nez v9, :cond_284

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_27f
    .catchall {:try_start_24d .. :try_end_27f} :catchall_280

    goto :goto_284

    :catchall_280
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :cond_284
    :goto_284
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_293

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_293
    return-void

    .line 3922
    :cond_294
    :try_start_294
    invoke-static {v13}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30f

    const-string v0, "java log sample miss"

    .line 3923
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29f
    .catchall {:try_start_294 .. :try_end_29f} :catchall_528

    if-eqz p3, :cond_2b7

    .line 3974
    :try_start_2a1
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_2a5
    .catchall {:try_start_2a1 .. :try_end_2a5} :catchall_2b1

    if-eqz v0, :cond_2b7

    if-nez v9, :cond_2b7

    .line 3977
    :try_start_2a9
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_2ac
    .catchall {:try_start_2a9 .. :try_end_2ac} :catchall_2ae

    const/4 v3, 0x1

    goto :goto_2b8

    :catchall_2ae
    move-exception v0

    const/4 v3, 0x1

    goto :goto_2b3

    :catchall_2b1
    move-exception v0

    const/4 v3, 0x0

    .line 3979
    :goto_2b3
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2b8

    :cond_2b7
    const/4 v3, 0x0

    :goto_2b8
    if-nez v3, :cond_2bf

    if-nez v9, :cond_2bf

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_2bf
    :try_start_2bf
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_2c2
    .catchall {:try_start_2bf .. :try_end_2c2} :catchall_2c3

    goto :goto_2c8

    :catchall_2c3
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_2c8
    :try_start_2c8
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_2d3

    const/4 v0, 0x1

    .line 3997
    :cond_2d3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2eb

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2eb

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_2eb
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_2ff

    if-nez v9, :cond_2ff

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_2fa
    .catchall {:try_start_2c8 .. :try_end_2fa} :catchall_2fb

    goto :goto_2ff

    :catchall_2fb
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :cond_2ff
    :goto_2ff
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_30e

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_30e
    return-void

    :cond_30f
    const-wide/16 v12, 0x0

    goto/16 :goto_428

    :cond_313
    if-eqz v14, :cond_31a

    :try_start_315
    const-string v10, "omit"

    .line 3929
    invoke-static {v6, v15}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    :cond_31a
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_324

    const/4 v12, 0x0

    .line 3933
    invoke-static {v10, v13, v12, v8}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12
    :try_end_323
    .catchall {:try_start_315 .. :try_end_323} :catchall_528

    goto :goto_326

    :cond_324
    const-wide/16 v12, 0x0

    :goto_326
    const-wide/16 v15, 0x0

    cmp-long v0, v12, v15

    if-nez v0, :cond_3ad

    :try_start_32c
    const-string v10, "skip java crash:"

    .line 3938
    invoke-static {v6, v10}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3939
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_334
    .catchall {:try_start_32c .. :try_end_334} :catchall_526

    if-eqz v0, :cond_33d

    .line 4015
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_33d

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_33d
    if-eqz p3, :cond_355

    .line 3974
    :try_start_33f
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_343
    .catchall {:try_start_33f .. :try_end_343} :catchall_34f

    if-eqz v0, :cond_355

    if-nez v9, :cond_355

    .line 3977
    :try_start_347
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_34a
    .catchall {:try_start_347 .. :try_end_34a} :catchall_34c

    const/4 v3, 0x1

    goto :goto_356

    :catchall_34c
    move-exception v0

    const/4 v3, 0x1

    goto :goto_351

    :catchall_34f
    move-exception v0

    const/4 v3, 0x0

    .line 3979
    :goto_351
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_356

    :cond_355
    const/4 v3, 0x0

    :goto_356
    if-nez v3, :cond_35d

    if-nez v9, :cond_35d

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_35d
    :try_start_35d
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_360
    .catchall {:try_start_35d .. :try_end_360} :catchall_361

    goto :goto_366

    :catchall_361
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_366
    :try_start_366
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_371

    const/4 v0, 0x1

    .line 3997
    :cond_371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_389

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_389

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_389
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_39d

    if-nez v9, :cond_39d

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_398
    .catchall {:try_start_366 .. :try_end_398} :catchall_399

    goto :goto_39d

    :catchall_399
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :cond_39d
    :goto_39d
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_3ac

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_3ac
    return-void

    :cond_3ad
    if-eqz v14, :cond_428

    if-eqz v0, :cond_3b8

    .line 4015
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_3b8

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_3b8
    if-eqz p3, :cond_3d0

    .line 3974
    :try_start_3ba
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_3be
    .catchall {:try_start_3ba .. :try_end_3be} :catchall_3ca

    if-eqz v0, :cond_3d0

    if-nez v9, :cond_3d0

    .line 3977
    :try_start_3c2
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_3c5
    .catchall {:try_start_3c2 .. :try_end_3c5} :catchall_3c7

    const/4 v3, 0x1

    goto :goto_3d1

    :catchall_3c7
    move-exception v0

    const/4 v3, 0x1

    goto :goto_3cc

    :catchall_3ca
    move-exception v0

    const/4 v3, 0x0

    .line 3979
    :goto_3cc
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3d1

    :cond_3d0
    const/4 v3, 0x0

    :goto_3d1
    if-nez v3, :cond_3d8

    if-nez v9, :cond_3d8

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_3d8
    :try_start_3d8
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_3db
    .catchall {:try_start_3d8 .. :try_end_3db} :catchall_3dc

    goto :goto_3e1

    :catchall_3dc
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_3e1
    :try_start_3e1
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_3ec

    const/4 v0, 0x1

    .line 3997
    :cond_3ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_404

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_404

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_404
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_418

    if-nez v9, :cond_418

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_413
    .catchall {:try_start_3e1 .. :try_end_413} :catchall_414

    goto :goto_418

    :catchall_414
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :cond_418
    :goto_418
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_427

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_427
    return-void

    .line 3948
    :cond_428
    :goto_428
    :try_start_428
    instance-of v0, v2, Ljava/lang/OutOfMemoryError;

    .line 3949
    invoke-static {v2, v10, v12, v13, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;

    const-string v14, "generate java report finished"

    .line 3951
    invoke-static {v6, v14}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3953
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v14

    if-nez v14, :cond_4a5

    if-eqz v0, :cond_4a5

    .line 3954
    invoke-static {}, Lcom/uc/crashsdk/g;->j()Z

    move-result v0

    if-eqz v0, :cond_4a5

    .line 3955
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_45b

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    :cond_45b
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s%s.hprof"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v10, v7, v8

    const/4 v10, 0x1

    aput-object v0, v7, v10

    invoke-static {v14, v15, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "begin dump hprof: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_480
    .catchall {:try_start_428 .. :try_end_480} :catchall_526

    :try_start_480
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_483
    .catchall {:try_start_480 .. :try_end_483} :catchall_484

    goto :goto_489

    :catchall_484
    move-exception v0

    move-object v7, v0

    :try_start_486
    invoke-static {v7}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "end dump hprof, use "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v14, v17, v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a5
    .catchall {:try_start_486 .. :try_end_4a5} :catchall_526

    :cond_4a5
    const-wide/16 v6, 0x0

    cmp-long v0, v12, v6

    if-eqz v0, :cond_4b2

    .line 4015
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_4b2

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_4b2
    if-eqz p3, :cond_4cd

    .line 3974
    :try_start_4b4
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_4b8
    .catchall {:try_start_4b4 .. :try_end_4b8} :catchall_4c6

    if-eqz v0, :cond_4cd

    if-nez v9, :cond_4cd

    const/4 v3, 0x1

    .line 3977
    :try_start_4bd
    invoke-static {v3, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_4c0
    .catchall {:try_start_4bd .. :try_end_4c0} :catchall_4c2

    const/4 v0, 0x1

    goto :goto_4ce

    :catchall_4c2
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_4c9

    :catchall_4c6
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    .line 3979
    :goto_4c9
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4ce

    :cond_4cd
    const/4 v0, 0x0

    :goto_4ce
    if-nez v0, :cond_4d5

    if-nez v9, :cond_4d5

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_4d5
    :try_start_4d5
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_4d8
    .catchall {:try_start_4d5 .. :try_end_4d8} :catchall_4d9

    goto :goto_4de

    :catchall_4d9
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_4de
    :try_start_4de
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_4e9

    const/4 v0, 0x1

    .line 3997
    :cond_4e9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_501

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_501

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_501
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_515

    if-nez v9, :cond_515

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_510
    .catchall {:try_start_4de .. :try_end_510} :catchall_511

    goto :goto_515

    :catchall_511
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_515
    :goto_515
    const/4 v1, 0x1

    .line 4011
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_525

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_525
    return-void

    :catchall_526
    move-exception v0

    goto :goto_52e

    :catchall_528
    move-exception v0

    goto :goto_52c

    :catchall_52a
    move-exception v0

    const/4 v11, 0x0

    :goto_52c
    const-wide/16 v12, 0x0

    .line 3959
    :goto_52e
    :try_start_52e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "exception occurs while java log: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    if-nez v11, :cond_556

    .line 3963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_556
    .catchall {:try_start_52e .. :try_end_556} :catchall_5d7

    :cond_556
    const-wide/16 v6, 0x0

    cmp-long v0, v12, v6

    if-eqz v0, :cond_563

    .line 4015
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_563

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_563
    if-eqz p3, :cond_57e

    .line 3974
    :try_start_565
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_569
    .catchall {:try_start_565 .. :try_end_569} :catchall_577

    if-eqz v0, :cond_57e

    if-nez v9, :cond_57e

    const/4 v3, 0x1

    .line 3977
    :try_start_56e
    invoke-static {v3, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_571
    .catchall {:try_start_56e .. :try_end_571} :catchall_573

    const/4 v0, 0x1

    goto :goto_57f

    :catchall_573
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_57a

    :catchall_577
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    .line 3979
    :goto_57a
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_57f

    :cond_57e
    const/4 v0, 0x0

    :goto_57f
    if-nez v0, :cond_586

    if-nez v9, :cond_586

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_586
    :try_start_586
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_589
    .catchall {:try_start_586 .. :try_end_589} :catchall_58a

    goto :goto_58f

    :catchall_58a
    move-exception v0

    move-object v3, v0

    .line 3988
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_58f
    :try_start_58f
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_59a

    const/4 v0, 0x1

    .line 3997
    :cond_59a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5b2

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5b2

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_5b2
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_5c6

    if-nez v9, :cond_5c6

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_5c1
    .catchall {:try_start_58f .. :try_end_5c1} :catchall_5c2

    goto :goto_5c6

    :catchall_5c2
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_5c6
    :goto_5c6
    const/4 v1, 0x1

    .line 4011
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_5d6

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_5d6
    return-void

    :catchall_5d7
    move-exception v0

    move-object v3, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v12, v6

    if-eqz v0, :cond_5e6

    .line 4015
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_5e6

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_5e6
    if-eqz p3, :cond_5ff

    .line 3974
    :try_start_5e8
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_5ec
    .catchall {:try_start_5e8 .. :try_end_5ec} :catchall_5f9

    if-eqz v0, :cond_5ff

    if-nez v9, :cond_5ff

    const/4 v6, 0x1

    .line 3977
    :try_start_5f1
    invoke-static {v6, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_5f4
    .catchall {:try_start_5f1 .. :try_end_5f4} :catchall_5f6

    const/4 v10, 0x1

    goto :goto_600

    :catchall_5f6
    move-exception v0

    const/4 v10, 0x1

    goto :goto_5fb

    :catchall_5f9
    move-exception v0

    const/4 v10, 0x0

    .line 3979
    :goto_5fb
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_600

    :cond_5ff
    const/4 v10, 0x0

    :goto_600
    if-nez v10, :cond_607

    if-nez v9, :cond_607

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_607
    :try_start_607
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_60a
    .catchall {:try_start_607 .. :try_end_60a} :catchall_60b

    goto :goto_610

    :catchall_60b
    move-exception v0

    move-object v6, v0

    .line 3988
    invoke-static {v6}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_610
    :try_start_610
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v10

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_61b

    const/4 v10, 0x1

    .line 3997
    :cond_61b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_633

    .line 3998
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_633

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_633
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_647

    if-nez v9, :cond_647

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_642
    .catchall {:try_start_610 .. :try_end_642} :catchall_643

    goto :goto_647

    :catchall_643
    move-exception v0

    .line 4007
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_647
    :goto_647
    const/4 v1, 0x1

    .line 4011
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_657

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3968
    :cond_657
    throw v3
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 3813
    invoke-virtual {p0, p1, p2, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    return-void
.end method
