.class public final enum Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;
.super Ljava/lang/Enum;
.source "CodeMaoStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/stat/CodeMaoStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountlyMessagingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

.field public static final enum PRODUCTION:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

.field public static final enum TEST:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 122
    new-instance v0, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    const-string v1, "TEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;->TEST:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    .line 123
    new-instance v1, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    const-string v3, "PRODUCTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;->PRODUCTION:Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 121
    sput-object v3, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;->$VALUES:[Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;
    .registers 2

    .line 121
    const-class v0, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    return-object p0
.end method

.method public static values()[Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;
    .registers 1

    .line 121
    sget-object v0, Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;->$VALUES:[Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    invoke-virtual {v0}, [Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;

    return-object v0
.end method
