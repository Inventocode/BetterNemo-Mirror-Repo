.class final Lcom/codemao/midi/CMMidiHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "CMMidiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/CMMidiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/midi/CMMidiHelper$SingletonHolder;

.field private static final instance:Lcom/codemao/midi/CMMidiHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 116
    new-instance v0, Lcom/codemao/midi/CMMidiHelper$SingletonHolder;

    invoke-direct {v0}, Lcom/codemao/midi/CMMidiHelper$SingletonHolder;-><init>()V

    sput-object v0, Lcom/codemao/midi/CMMidiHelper$SingletonHolder;->INSTANCE:Lcom/codemao/midi/CMMidiHelper$SingletonHolder;

    .line 117
    new-instance v0, Lcom/codemao/midi/CMMidiHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/midi/CMMidiHelper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/midi/CMMidiHelper$SingletonHolder;->instance:Lcom/codemao/midi/CMMidiHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/codemao/midi/CMMidiHelper;
    .registers 2

    .line 117
    sget-object v0, Lcom/codemao/midi/CMMidiHelper$SingletonHolder;->instance:Lcom/codemao/midi/CMMidiHelper;

    return-object v0
.end method
