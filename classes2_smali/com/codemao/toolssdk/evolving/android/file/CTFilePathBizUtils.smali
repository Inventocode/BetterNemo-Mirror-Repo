.class public final Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;
.super Ljava/lang/Object;
.source "CTFilePathBizUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathBizUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOfflineTargetPathDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;

    invoke-virtual {v1, p1, p2}, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->getToolOfflineTargetPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
