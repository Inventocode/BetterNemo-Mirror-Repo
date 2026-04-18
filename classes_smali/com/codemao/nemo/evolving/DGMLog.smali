.class public final Lcom/codemao/nemo/evolving/DGMLog;
.super Ljava/lang/Object;
.source "DGMLog.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

.field private static final LOGIN:Ljava/lang/String;

.field private static final PREFIX:Ljava/lang/String;

.field private static final PUBLISH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/codemao/nemo/evolving/DGMLog;

    invoke-direct {v0}, Lcom/codemao/nemo/evolving/DGMLog;-><init>()V

    sput-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string v0, "dgml_"

    .line 8
    sput-object v0, Lcom/codemao/nemo/evolving/DGMLog;->PREFIX:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/codemao/nemo/evolving/DGMLog;->LOGIN:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "publish"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/evolving/DGMLog;->PUBLISH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final performLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-virtual {p0}, Lcom/codemao/nemo/evolving/DGMLog;->enable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method


# virtual methods
.method public final dLogin(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->LOGIN:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/evolving/DGMLog;->performLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final dPublish(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->PUBLISH:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/evolving/DGMLog;->performLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
