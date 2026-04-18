.class public final Lcom/ljwx/baseapp/util/OtherUtils;
.super Ljava/lang/Object;
.source "OtherUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/ljwx/baseapp/util/OtherUtils;

.field private static isDevicePad:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ljwx/baseapp/util/OtherUtils;

    invoke-direct {v0}, Lcom/ljwx/baseapp/util/OtherUtils;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/util/OtherUtils;->INSTANCE:Lcom/ljwx/baseapp/util/OtherUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDevicePad()Z
    .registers 2

    .line 8
    sget-boolean v0, Lcom/ljwx/baseapp/util/OtherUtils;->isDevicePad:Z

    return v0
.end method

.method public final setDevicePad(Z)V
    .registers 2

    .line 12
    sput-boolean p1, Lcom/ljwx/baseapp/util/OtherUtils;->isDevicePad:Z

    return-void
.end method
