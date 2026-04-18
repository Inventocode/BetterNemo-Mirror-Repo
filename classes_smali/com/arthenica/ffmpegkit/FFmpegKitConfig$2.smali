.class synthetic Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;
.super Ljava/lang/Object;
.source "FFmpegKitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arthenica/ffmpegkit/FFmpegKitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$arthenica$ffmpegkit$Level:[I

.field static final synthetic $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 290
    invoke-static {}, Lcom/arthenica/ffmpegkit/Level;->values()[Lcom/arthenica/ffmpegkit/Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v3, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v4, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v5, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    .line 262
    :catch_78
    invoke-static {}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->values()[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    :try_start_81
    sget-object v6, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_89} :catch_89

    :catch_89
    :try_start_89
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    sget-object v5, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9d
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a7
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->ALWAYS_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_b1

    :catch_b1
    return-void
.end method
