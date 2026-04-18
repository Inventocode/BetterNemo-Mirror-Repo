.class public final Lcom/ljwx/recyclerview/BaseRecyclerLog;
.super Ljava/lang/Object;
.source "BaseRecyclerLog.kt"


# static fields
.field public static final INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;

    invoke-direct {v0}, Lcom/ljwx/recyclerview/BaseRecyclerLog;-><init>()V

    sput-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    const-string v0, "-[recycler"

    .line 7
    sput-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ljwx/recyclerview/BaseRecyclerLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
