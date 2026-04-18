.class synthetic Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;
.super Ljava/lang/Object;
.source "TwoLevelHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

.field static final synthetic $SwitchMap$com$scwang$smartrefresh$layout$constant$SpinnerStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 223
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values()[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$SpinnerStyle:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$SpinnerStyle:[I

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 172
    :catch_1d
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->values()[Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    :try_start_26
    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    return-void
.end method
