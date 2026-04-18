.class final Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CTOfflinePackageCache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;
    .registers 2

    .line 27
    new-instance v0, Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache$offlineManager$2;->invoke()Lcom/codemao/toolssdk/evolving/manager/internal/offlinepackage/CTOfflinePackageManager;

    move-result-object v0

    return-object v0
.end method
