.class public final enum Lcom/qiniu/android/dns/Record$Source;
.super Ljava/lang/Enum;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qiniu/android/dns/Record$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qiniu/android/dns/Record$Source;

.field public static final enum DnspodEnterprise:Lcom/qiniu/android/dns/Record$Source;

.field public static final enum DnspodFree:Lcom/qiniu/android/dns/Record$Source;

.field public static final enum System:Lcom/qiniu/android/dns/Record$Source;

.field public static final enum Unknown:Lcom/qiniu/android/dns/Record$Source;


# direct methods
.method private static synthetic $values()[Lcom/qiniu/android/dns/Record$Source;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qiniu/android/dns/Record$Source;

    .line 9
    sget-object v1, Lcom/qiniu/android/dns/Record$Source;->Unknown:Lcom/qiniu/android/dns/Record$Source;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiniu/android/dns/Record$Source;->DnspodFree:Lcom/qiniu/android/dns/Record$Source;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiniu/android/dns/Record$Source;->DnspodEnterprise:Lcom/qiniu/android/dns/Record$Source;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiniu/android/dns/Record$Source;->System:Lcom/qiniu/android/dns/Record$Source;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lcom/qiniu/android/dns/Record$Source;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/Record$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/dns/Record$Source;->Unknown:Lcom/qiniu/android/dns/Record$Source;

    new-instance v0, Lcom/qiniu/android/dns/Record$Source;

    const-string v1, "DnspodFree"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/Record$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/dns/Record$Source;->DnspodFree:Lcom/qiniu/android/dns/Record$Source;

    new-instance v0, Lcom/qiniu/android/dns/Record$Source;

    const-string v1, "DnspodEnterprise"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/Record$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/dns/Record$Source;->DnspodEnterprise:Lcom/qiniu/android/dns/Record$Source;

    new-instance v0, Lcom/qiniu/android/dns/Record$Source;

    const-string v1, "System"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/dns/Record$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiniu/android/dns/Record$Source;->System:Lcom/qiniu/android/dns/Record$Source;

    .line 9
    invoke-static {}, Lcom/qiniu/android/dns/Record$Source;->$values()[Lcom/qiniu/android/dns/Record$Source;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/dns/Record$Source;->$VALUES:[Lcom/qiniu/android/dns/Record$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qiniu/android/dns/Record$Source;
    .registers 2

    .line 9
    const-class v0, Lcom/qiniu/android/dns/Record$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qiniu/android/dns/Record$Source;

    return-object p0
.end method

.method public static values()[Lcom/qiniu/android/dns/Record$Source;
    .registers 1

    .line 9
    sget-object v0, Lcom/qiniu/android/dns/Record$Source;->$VALUES:[Lcom/qiniu/android/dns/Record$Source;

    invoke-virtual {v0}, [Lcom/qiniu/android/dns/Record$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/Record$Source;

    return-object v0
.end method
