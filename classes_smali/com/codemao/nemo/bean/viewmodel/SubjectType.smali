.class public final enum Lcom/codemao/nemo/bean/viewmodel/SubjectType;
.super Ljava/lang/Enum;
.source "CourseV2ViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/nemo/bean/viewmodel/SubjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/nemo/bean/viewmodel/SubjectType;

.field public static final enum SubjectList:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

.field public static final enum SubjectTitle:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

.field public static final enum SubjectTwice:Lcom/codemao/nemo/bean/viewmodel/SubjectType;


# direct methods
.method private static final synthetic $values()[Lcom/codemao/nemo/bean/viewmodel/SubjectType;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTitle:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTwice:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectList:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 162
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    const-string v1, "SubjectTitle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/SubjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTitle:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    .line 163
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    const-string v1, "SubjectTwice"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/SubjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectTwice:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    .line 164
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    const-string v1, "SubjectList"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/viewmodel/SubjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->SubjectList:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    invoke-static {}, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->$values()[Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->$VALUES:[Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/nemo/bean/viewmodel/SubjectType;
    .registers 2

    const-class v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/nemo/bean/viewmodel/SubjectType;
    .registers 1

    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectType;->$VALUES:[Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    return-object v0
.end method
