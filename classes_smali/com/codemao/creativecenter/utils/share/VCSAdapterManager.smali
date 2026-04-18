.class public final Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;
.super Ljava/lang/Object;
.source "VCSAdapterManager.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

.field private static mShareAdapter:Lcom/codemao/creativecenter/utils/share/IShareAdapter;

.field private static mVersionAdapter:Lcom/codemao/creativecenter/utils/share/IVersionAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->INSTANCE:Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMShareAdapter()Lcom/codemao/creativecenter/utils/share/IShareAdapter;
    .registers 2

    .line 25
    sget-object v0, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->mShareAdapter:Lcom/codemao/creativecenter/utils/share/IShareAdapter;

    return-object v0
.end method

.method public final getMVersionAdapter()Lcom/codemao/creativecenter/utils/share/IVersionAdapter;
    .registers 2

    .line 27
    sget-object v0, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->mVersionAdapter:Lcom/codemao/creativecenter/utils/share/IVersionAdapter;

    return-object v0
.end method

.method public final needShow(I)Z
    .registers 4

    .line 33
    sget-object v0, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->mShareAdapter:Lcom/codemao/creativecenter/utils/share/IShareAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_b

    .line 36
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-interface {v0}, Lcom/codemao/creativecenter/utils/share/IShareAdapter;->initShare()I

    move-result v0

    shr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_16

    return v0

    :cond_16
    return v1
.end method
