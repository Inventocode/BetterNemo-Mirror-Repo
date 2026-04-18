.class public final Lcom/ljwx/basestate/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static final StateLayout:[I

.field public static final StateLayout_stateLayoutEmpty:I = 0x0

.field public static final StateLayout_stateLayoutError:I = 0x1

.field public static final StateLayout_stateLayoutExtend:I = 0x2

.field public static final StateLayout_stateLayoutExtend2:I = 0x3

.field public static final StateLayout_stateLayoutExtend3:I = 0x4

.field public static final StateLayout_stateLayoutLoading:I = 0x5

.field public static final StateLayout_stateLayoutOffline:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ljwx/basestate/R$styleable;->StateLayout:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f04048d
        0x7f04048e
        0x7f04048f
        0x7f040490
        0x7f040491
        0x7f040492
        0x7f040493
    .end array-data
.end method
