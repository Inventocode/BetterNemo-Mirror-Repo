.class public final Lcom/codemao/toolssdk/cpp/consts/CTConstType;
.super Ljava/lang/Object;
.source "CTConstType.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/consts/CTConstType;

.field private static final RECORD_STATE_CALLING:I

.field private static final RECORD_STATE_END:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/consts/CTConstType;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->INSTANCE:Lcom/codemao/toolssdk/cpp/consts/CTConstType;

    const/4 v0, 0x1

    .line 10
    sput v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->RECORD_STATE_CALLING:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRECORD_STATE_CALLING()I
    .registers 2

    .line 10
    sget v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->RECORD_STATE_CALLING:I

    return v0
.end method

.method public final getRECORD_STATE_END()I
    .registers 2

    .line 11
    sget v0, Lcom/codemao/toolssdk/cpp/consts/CTConstType;->RECORD_STATE_END:I

    return v0
.end method
