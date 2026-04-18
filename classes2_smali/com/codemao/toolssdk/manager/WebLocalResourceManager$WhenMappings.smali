.class public final synthetic Lcom/codemao/toolssdk/manager/WebLocalResourceManager$WhenMappings;
.super Ljava/lang/Object;
.source "WebLocalResourceManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/manager/WebLocalResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/codemao/toolssdk/manager/WebLocalType;->values()[Lcom/codemao/toolssdk/manager/WebLocalType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lcom/codemao/toolssdk/manager/WebLocalType;->INTL_ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lcom/codemao/toolssdk/manager/WebLocalType;->ROKI:Lcom/codemao/toolssdk/manager/WebLocalType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/codemao/toolssdk/manager/WebLocalResourceManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/codemao/toolssdk/manager/CMTEnvMode;->values()[Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_22
    sget-object v3, Lcom/codemao/toolssdk/manager/CMTEnvMode;->DEV:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v1, Lcom/codemao/toolssdk/manager/CMTEnvMode;->RELEASE:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3b

    :catch_3b
    return-void
.end method
