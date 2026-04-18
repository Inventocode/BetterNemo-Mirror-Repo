.class public abstract Landroidx/navigation/NavType;
.super Ljava/lang/Object;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavType$SerializableArrayType;,
        Landroidx/navigation/NavType$EnumType;,
        Landroidx/navigation/NavType$SerializableType;,
        Landroidx/navigation/NavType$ParcelableArrayType;,
        Landroidx/navigation/NavType$ParcelableType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BoolArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final BoolType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FloatArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final FloatType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final IntArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final IntType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LongArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final LongType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReferenceType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNullableAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 269
    new-instance v0, Landroidx/navigation/NavType$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$1;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 304
    new-instance v0, Landroidx/navigation/NavType$2;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$2;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 342
    new-instance v0, Landroidx/navigation/NavType$3;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$3;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    .line 375
    new-instance v0, Landroidx/navigation/NavType$4;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$4;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    .line 416
    new-instance v0, Landroidx/navigation/NavType$5;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$5;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    .line 447
    new-instance v0, Landroidx/navigation/NavType$6;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$6;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 479
    new-instance v0, Landroidx/navigation/NavType$7;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$7;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    .line 510
    new-instance v0, Landroidx/navigation/NavType$8;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType$8;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 549
    new-instance v0, Landroidx/navigation/NavType$9;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$9;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    .line 580
    new-instance v0, Landroidx/navigation/NavType$10;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$10;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 612
    new-instance v0, Landroidx/navigation/NavType$11;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType$11;-><init>(Z)V

    sput-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Landroidx/navigation/NavType;->mNullableAllowed:Z

    return-void
.end method

.method public static fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    .line 129
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 131
    :cond_d
    sget-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    .line 133
    :cond_1a
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-object v0

    .line 135
    :cond_27
    sget-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    return-object v0

    .line 137
    :cond_34
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    return-object v0

    .line 139
    :cond_41
    sget-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return-object v0

    .line 141
    :cond_4e
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    return-object v0

    .line 143
    :cond_5b
    sget-object v1, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    return-object v1

    .line 145
    :cond_68
    sget-object v1, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    return-object v1

    .line 147
    :cond_75
    sget-object v1, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    return-object v1

    .line 149
    :cond_82
    sget-object v1, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    return-object v1

    :cond_8f
    if-eqz p0, :cond_131

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_131

    :try_start_97
    const-string v0, "."

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    if-eqz p1, :cond_b1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b2

    :cond_b1
    move-object p1, p0

    :goto_b2
    const-string v0, "[]"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e5

    const/4 p0, 0x0

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 163
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 164
    new-instance p1, Landroidx/navigation/NavType$ParcelableArrayType;

    invoke-direct {p1, p0}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 165
    :cond_d7
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 166
    new-instance p1, Landroidx/navigation/NavType$SerializableArrayType;

    invoke-direct {p1, p0}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 169
    :cond_e5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 170
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 171
    new-instance p1, Landroidx/navigation/NavType$ParcelableType;

    invoke-direct {p1, p0}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 172
    :cond_f7
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 173
    new-instance p1, Landroidx/navigation/NavType$EnumType;

    invoke-direct {p1, p0}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 174
    :cond_105
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 175
    new-instance p1, Landroidx/navigation/NavType$SerializableType;

    invoke-direct {p1, p0}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 178
    :cond_113
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Serializable or Parcelable."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_12a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_97 .. :try_end_12a} :catch_12a

    :catch_12a
    move-exception p0

    .line 181
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_131
    return-object v0
.end method

.method static inferFromValue(Ljava/lang/String;)Landroidx/navigation/NavType;
    .registers 2

    .line 192
    :try_start_0
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 198
    :catch_6
    :try_start_6
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_b} :catch_c

    return-object v0

    .line 205
    :catch_c
    :try_start_c
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_11} :catch_12

    return-object v0

    .line 212
    :catch_12
    :try_start_12
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_17} :catch_18

    return-object v0

    .line 218
    :catch_18
    sget-object p0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method static inferFromValueType(Ljava/lang/Object;)Landroidx/navigation/NavType;
    .registers 4

    .line 224
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 225
    sget-object p0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    return-object p0

    .line 226
    :cond_7
    instance-of v0, p0, [I

    if-eqz v0, :cond_e

    .line 227
    sget-object p0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    return-object p0

    .line 228
    :cond_e
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_15

    .line 229
    sget-object p0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    return-object p0

    .line 230
    :cond_15
    instance-of v0, p0, [J

    if-eqz v0, :cond_1c

    .line 231
    sget-object p0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    return-object p0

    .line 232
    :cond_1c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_23

    .line 233
    sget-object p0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    return-object p0

    .line 234
    :cond_23
    instance-of v0, p0, [F

    if-eqz v0, :cond_2a

    .line 235
    sget-object p0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    return-object p0

    .line 236
    :cond_2a
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_31

    .line 237
    sget-object p0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    return-object p0

    .line 238
    :cond_31
    instance-of v0, p0, [Z

    if-eqz v0, :cond_38

    .line 239
    sget-object p0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    return-object p0

    .line 240
    :cond_38
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_e5

    if-nez p0, :cond_40

    goto/16 :goto_e5

    .line 242
    :cond_40
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 243
    sget-object p0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    return-object p0

    .line 244
    :cond_47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6f

    const-class v0, Landroid/os/Parcelable;

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 246
    new-instance v0, Landroidx/navigation/NavType$ParcelableArrayType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 247
    :cond_6f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_97

    const-class v0, Ljava/io/Serializable;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 249
    new-instance v0, Landroidx/navigation/NavType$SerializableArrayType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 250
    :cond_97
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_a5

    .line 251
    new-instance v0, Landroidx/navigation/NavType$ParcelableType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 252
    :cond_a5
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_b3

    .line 253
    new-instance v0, Landroidx/navigation/NavType$EnumType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 254
    :cond_b3
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_c1

    .line 255
    new-instance v0, Landroidx/navigation/NavType$SerializableType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 257
    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for navigation arguments."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_e5
    :goto_e5
    sget-object p0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    return-object p0
.end method


# virtual methods
.method public abstract get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public isNullableAllowed()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Landroidx/navigation/NavType;->mNullableAllowed:Z

    return v0
.end method

.method parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p3}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p3
.end method

.method public abstract parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 114
    invoke-virtual {p0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
