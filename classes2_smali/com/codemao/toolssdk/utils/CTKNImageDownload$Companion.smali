.class public final Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;
.super Ljava/lang/Object;
.source "CTKNImageDownload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/utils/CTKNImageDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;-><init>()V

    return-void
.end method

.method private final getIInstance()Lcom/codemao/toolssdk/utils/CTKNImageDownload;
    .registers 2

    .line 13
    invoke-static {}, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->access$getIInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;

    return-object v0
.end method


# virtual methods
.method public final getInstance()Lcom/codemao/toolssdk/utils/CTKNImageDownload;
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;->getIInstance()Lcom/codemao/toolssdk/utils/CTKNImageDownload;

    move-result-object v0

    return-object v0
.end method
