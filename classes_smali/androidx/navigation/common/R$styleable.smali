.class public final Landroidx/navigation/common/R$styleable;
.super Ljava/lang/Object;


# static fields
.field public static final NavAction:[I

.field public static final NavAction_android_id:I = 0x0

.field public static final NavAction_destination:I = 0x1

.field public static final NavAction_enterAnim:I = 0x2

.field public static final NavAction_exitAnim:I = 0x3

.field public static final NavAction_launchSingleTop:I = 0x4

.field public static final NavAction_popEnterAnim:I = 0x5

.field public static final NavAction_popExitAnim:I = 0x6

.field public static final NavAction_popUpTo:I = 0x7

.field public static final NavAction_popUpToInclusive:I = 0x8

.field public static final NavArgument:[I

.field public static final NavArgument_android_defaultValue:I = 0x1

.field public static final NavArgument_android_name:I = 0x0

.field public static final NavArgument_argType:I = 0x2

.field public static final NavArgument_nullable:I = 0x3

.field public static final NavDeepLink:[I

.field public static final NavDeepLink_action:I = 0x1

.field public static final NavDeepLink_mimeType:I = 0x2

.field public static final NavDeepLink_uri:I = 0x3

.field public static final NavGraphNavigator:[I

.field public static final NavGraphNavigator_startDestination:I = 0x0

.field public static final Navigator:[I

.field public static final Navigator_android_id:I = 0x1

.field public static final Navigator_android_label:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Landroidx/navigation/common/R$styleable;->NavAction:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_42

    sput-object v1, Landroidx/navigation/common/R$styleable;->NavArgument:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Landroidx/navigation/common/R$styleable;->NavDeepLink:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040487

    aput v2, v0, v1

    sput-object v0, Landroidx/navigation/common/R$styleable;->NavGraphNavigator:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Landroidx/navigation/common/R$styleable;->Navigator:[I

    return-void

    :array_2c
    .array-data 4
        0x10100d0
        0x7f04017b
        0x7f0401ad
        0x7f0401b5
        0x7f040272
        0x7f040385
        0x7f040386
        0x7f040387
        0x7f040388
    .end array-data

    :array_42
    .array-data 4
        0x1010003
        0x10101ed
        0x7f04003b
        0x7f040357
    .end array-data

    :array_4e
    .array-data 4
        0x10104ee
        0x7f040002
        0x7f04031e
        0x7f040575
    .end array-data

    :array_5a
    .array-data 4
        0x1010001
        0x10100d0
    .end array-data
.end method
