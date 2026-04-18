.class public final Lcom/tencent/bugly/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static aa:Lcom/tencent/bugly/crashreport/common/info/a;


# instance fields
.field public A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:Lcom/tencent/bugly/crashreport/a;

.field public final E:Landroid/content/SharedPreferences;

.field private final G:Landroid/content/Context;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:J

.field private O:J

.field private P:J

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private T:Z

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/Boolean;

.field private X:Ljava/lang/String;

.field private Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public final a:J

.field private ab:I

.field private ac:I

.field private final ad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final af:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Landroid/content/SharedPreferences;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private final ak:Ljava/lang/Object;

.field private final al:Ljava/lang/Object;

.field private final am:Ljava/lang/Object;

.field private final an:Ljava/lang/Object;

.field private final ao:Ljava/lang/Object;

.field private final ap:Ljava/lang/Object;

.field private final aq:Ljava/lang/Object;

.field private final ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:B

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/Map;

    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    const-string v1, "4.0.4"

    .line 39
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    const-string v1, "unknown"

    .line 41
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    const-string v2, ""

    .line 50
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;

    const/4 v3, 0x0

    .line 52
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    const-wide/16 v4, -0x1

    .line 56
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    .line 57
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    .line 58
    iput-wide v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:J

    .line 59
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->S:Ljava/util/Map;

    const/4 v4, 0x0

    .line 63
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Z

    .line 64
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    .line 65
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/Boolean;

    .line 71
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    .line 72
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 73
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 74
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Y:Ljava/util/Map;

    .line 75
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Z:Ljava/util/Map;

    .line 77
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/util/List;

    const/4 v5, -0x1

    .line 80
    iput v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    .line 81
    iput v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:I

    .line 82
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    .line 83
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    .line 84
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/util/Map;

    .line 86
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 87
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->p:J

    .line 88
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    .line 89
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    .line 90
    iput-wide v5, p0, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    .line 92
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->t:Z

    .line 93
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 96
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    .line 98
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->y:Z

    .line 99
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->B:Ljava/util/List;

    .line 108
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->C:Z

    .line 109
    iput-object v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    .line 115
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:Z

    .line 116
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Z

    .line 117
    iput-boolean v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Z

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Ljava/lang/Object;

    .line 122
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Object;

    .line 124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/Object;

    .line 125
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/Object;

    .line 126
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    .line 133
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Landroid/content/Context;

    .line 134
    iput-byte v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->b:B

    .line 135
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_ef

    :try_start_d6
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;
    :try_end_e4
    .catchall {:try_start_d6 .. :try_end_e4} :catchall_e5

    goto :goto_ef

    :catchall_e5
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_ef

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    :cond_ef
    :goto_ef
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 137
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1a0

    :try_start_12b
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/util/List;

    const-string v2, "BUGLY_APPID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_142

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/String;

    const-string v3, "APP_ID"

    invoke-virtual {p0, v3, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_142
    const-string v2, "BUGLY_APP_VERSION"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_14e

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    :cond_14e
    const-string v2, "BUGLY_APP_CHANNEL"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_15a

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    :cond_15a
    const-string v2, "BUGLY_ENABLE_DEBUG"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_16c

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->t:Z

    :cond_16c
    const-string v2, "com.tencent.rdm.uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_178

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    :cond_178
    const-string v2, "BUGLY_APP_BUILD_NO"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_189

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_189
    const-string v2, "BUGLY_AREA"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1a0

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;
    :try_end_195
    .catchall {:try_start_12b .. :try_end_195} :catchall_196

    goto :goto_1a0

    :catchall_196
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1a0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a0
    :goto_1a0
    :try_start_1a0
    const-string v1, "bugly_db_"

    .line 143
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1be

    .line 146
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    const-string v0, "App is first time to be installed on the device."

    new-array v1, v4, [Ljava/lang/Object;

    .line 147
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1b5
    .catchall {:try_start_1a0 .. :try_end_1b5} :catchall_1b6

    goto :goto_1be

    :catchall_1b6
    move-exception v0

    .line 150
    sget-boolean v1, Lcom/tencent/bugly/b;->c:Z

    if-eqz v1, :cond_1be

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1be
    :goto_1be
    const-string v0, "BUGLY_COMMON_VALUES"

    .line 154
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    const-string v0, "BUGLY_RESERVED_VALUES"

    .line 155
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Landroid/content/SharedPreferences;

    .line 156
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->J()V

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "com info create end"

    .line 158
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static G()I
    .registers 1

    .line 1046
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->c()I

    move-result v0

    return v0
.end method

.method public static H()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Detect if the emulator is unavailable"

    .line 1057
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method public static I()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Detect if the device hook is unavailable"

    .line 1069
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method private J()V
    .registers 9

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v5, "put reserved request data from sp, key:%s value:%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v4}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e

    .line 168
    :cond_42
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v5, "put reserved request data from cache, key:%s value:%s"

    new-array v6, v2, [Ljava/lang/Object;

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v5, v1, v3}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4c

    .line 172
    :cond_7b
    sget-object v0, Lcom/tencent/bugly/crashreport/common/info/a;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_80
    .catchall {:try_start_0 .. :try_end_80} :catchall_81

    return-void

    :catchall_81
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    .registers 3

    const-class v0, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v0

    .line 284
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Lcom/tencent/bugly/crashreport/common/info/a;

    if-nez v1, :cond_e

    .line 285
    new-instance v1, Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 287
    :cond_e
    sget-object p0, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 892
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const-string p2, "key should not be empty %s"

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    .line 893
    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_12
    const-string v0, "putExtraRequestData key:%s value:%s save:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    const/4 v1, 0x2

    .line 896
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 897
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 899
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_55

    .line 902
    :cond_41
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_55

    .line 904
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ag:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 907
    :cond_55
    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_28 .. :try_end_56} :catchall_57

    return-void

    :catchall_57
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static declared-synchronized b()Lcom/tencent/bugly/crashreport/common/info/a;
    .registers 2

    const-class v0, Lcom/tencent/bugly/crashreport/common/info/a;

    monitor-enter v0

    .line 296
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/a;->aa:Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static r()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-object v1

    :catchall_b
    move-exception v1

    .line 882
    monitor-exit v0

    throw v1
.end method

.method public final B()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_e

    const/4 v1, 0x0

    .line 918
    monitor-exit v0

    return-object v1

    .line 920
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object v1

    :catchall_17
    move-exception v1

    .line 921
    monitor-exit v0

    throw v1
.end method

.method public final C()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_e

    const/4 v1, 0x0

    .line 946
    monitor-exit v0

    return-object v1

    .line 948
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object v1

    :catchall_17
    move-exception v1

    .line 949
    monitor-exit v0

    throw v1
.end method

.method public final D()I
    .registers 3

    .line 974
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_3
    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v1

    :catchall_7
    move-exception v1

    .line 976
    monitor-exit v0

    throw v1
.end method

.method public final E()I
    .registers 2

    .line 996
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:I

    return v0
.end method

.method public final declared-synchronized F()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1032
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .registers 6

    .line 959
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ao:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_3
    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    if-eq v1, p1, :cond_21

    .line 962
    iput p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    const-string p1, "user scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 963
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget v3, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ab:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 965
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(IZ)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "setActivityForeState, hash:%s isFore:%s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p2, :cond_22

    .line 267
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 269
    :cond_22
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 272
    :goto_34
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz p1, :cond_44

    .line 273
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_41

    const/4 v2, 0x1

    :cond_41
    invoke-interface {p1, v2}, Lcom/tencent/bugly/crashreport/a;->setNativeIsAppForeground(Z)Z

    :cond_44
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 349
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/String;

    const-string v0, "APP_ID"

    .line 350
    invoke-virtual {p0, v0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_8
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_12
    :goto_12
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 379
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Z

    return-void
.end method

.method public final a(ZZ)V
    .registers 3

    .line 384
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:Z

    .line 385
    iput-boolean p2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Z

    return-void
.end method

.method public final a()Z
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    new-array v1, v1, [Ljava/lang/Object;

    .line 254
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "isAppForeground:%s"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method public final b(I)V
    .registers 4

    .line 983
    iget p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:I

    const/16 v0, 0x5e20

    if-eq p1, v0, :cond_20

    .line 985
    iput v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 986
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "server scene tag %d changed to tag %d"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_7

    :try_start_5
    const-string p1, "10000"

    .line 374
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    .line 375
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 854
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 858
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_10
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1a
    :goto_1a
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 389
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 5

    .line 465
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "deviceId"

    .line 467
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aq:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_10
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ae:Ljava/util/Map;

    const-string v2, "E8"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 928
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 933
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->an:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_10
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->af:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1a
    :goto_1a
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 314
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "change deviceModel，old:%s new:%s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 508
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "deviceModel"

    .line 510
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 325
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ak:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    :try_start_a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_19

    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1

    throw v2

    .line 327
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->H:Ljava/lang/String;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    return-object v1

    :catchall_1d
    move-exception v1

    .line 328
    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 530
    monitor-exit p0

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 337
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    .line 340
    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 547
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 548
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()Ljava/lang/String;
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->K:Ljava/lang/String;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v1

    :catchall_7
    move-exception v1

    .line 361
    monitor-exit v0

    throw v1
.end method

.method public final g(Ljava/lang/String;)V
    .registers 3

    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 623
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 813
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .line 817
    :cond_1f
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_22
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception p1

    .line 819
    monitor-exit v0

    throw p1
.end method

.method public final h()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ah:Z

    return v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 838
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .line 842
    :cond_1f
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_22
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception p1

    .line 844
    monitor-exit v0

    throw p1
.end method

.method public final i()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ai:Z

    return v0
.end method

.method public final j()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->aj:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 5

    .line 410
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "deviceId"

    const/4 v1, 0x0

    .line 414
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    if-eqz v2, :cond_11

    return-object v2

    .line 420
    :cond_11
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "androidid"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    :cond_21
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 421
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_43

    .line 422
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "-"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_41
    iput-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 425
    :cond_43
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 426
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->J:Ljava/lang/String;

    return-object v0

    :cond_4d
    return-object v2
.end method

.method public final l()Ljava/lang/String;
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    const-string v1, "deviceModel"

    .line 484
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "collect device model from sp:%s"

    .line 486
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    return-object v0

    .line 489
    :cond_1e
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->T:Z

    if-nez v0, :cond_2c

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "not allow collect device model"

    .line 490
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "fail"

    return-object v0

    .line 495
    :cond_2c
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "collect device model:%s"

    .line 496
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 497
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized m()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 538
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->L:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()J
    .registers 6

    .line 556
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_e

    .line 557
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    .line 559
    :cond_e
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->N:J

    return-wide v0
.end method

.method public final o()J
    .registers 6

    .line 568
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_e

    .line 569
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    .line 571
    :cond_e
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->O:J

    return-wide v0
.end method

.method public final p()J
    .registers 6

    .line 580
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_e

    .line 581
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:J

    .line 583
    :cond_e
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->P:J

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .registers 4

    .line 605
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    new-array v0, v2, [Ljava/lang/Object;

    .line 606
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "get cpu type from so:%s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->Q:Ljava/lang/String;

    return-object v0

    .line 609
    :cond_18
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-array v0, v2, [Ljava/lang/Object;

    .line 610
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "get cpu type from lib dir:%s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 611
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->R:Ljava/lang/String;

    return-object v0

    :cond_2e
    const-string v0, "unknown"

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 658
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Landroid/content/Context;

    const-string v2, "BuglySdkInfos"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 659
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 660
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 661
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->al:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_46

    .line 662
    :try_start_16
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_43

    .line 664
    :try_start_2a
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3c

    goto :goto_1e

    :catchall_3c
    move-exception v3

    .line 666
    :try_start_3d
    invoke-static {v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    goto :goto_1e

    .line 669
    :cond_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    goto :goto_4a

    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2

    throw v1
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v1

    .line 672
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 674
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "["

    .line 677
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 679
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    .line 681
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    :cond_8f
    const-string v2, "SDK_INFO = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 683
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "SDK_INFO"

    .line 684
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ab
    const-string v1, "SDK_INFO is empty"

    new-array v0, v0, [Ljava/lang/Object;

    .line 687
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized t()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 698
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    .line 743
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 744
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    .line 746
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Ljava/lang/Boolean;
    .registers 2

    .line 764
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 765
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/Boolean;

    .line 767
    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->W:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .registers 4

    .line 785
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->G:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ROM ID: %s"

    .line 787
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 789
    :cond_23
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_e

    const/4 v1, 0x0

    .line 800
    monitor-exit v0

    return-object v1

    .line 802
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object v1

    :catchall_17
    move-exception v1

    .line 803
    monitor-exit v0

    throw v1
.end method

.method public final y()V
    .registers 3

    .line 826
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 828
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final z()I
    .registers 3

    .line 869
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->am:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->ad:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return v1

    :catchall_b
    move-exception v1

    .line 871
    monitor-exit v0

    throw v1
.end method
