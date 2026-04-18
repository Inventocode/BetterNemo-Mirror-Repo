.class public Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field private static final mObjectLruCache:Landroid/util/LruCache;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final mObjectSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 138
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 139
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_12

    .line 140
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 142
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 145
    :try_start_1c
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 157
    :cond_4
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 158
    :goto_8
    array-length v3, p2

    if-ge v2, v3, :cond_16

    .line 159
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 161
    :cond_16
    invoke-static {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 164
    :try_start_1c
    invoke-virtual {p0, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    :cond_21
    return-object v0
.end method

.method public static varargs findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 37
    invoke-static {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findFieldObj(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return-object p2

    .line 42
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object p2
.end method

.method public static varargs findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 53
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static varargs findFieldObj(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 196
    :try_start_3
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_22

    :cond_7
    const/4 v1, 0x0

    move-object v2, v0

    .line 200
    :goto_9
    array-length v3, p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_22

    if-ge v1, v3, :cond_1a

    .line 202
    :try_start_c
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_22

    goto :goto_14

    :catch_13
    move-object v2, v0

    :goto_14
    if-eqz v2, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    :goto_1a
    if-nez v2, :cond_1d

    return-object v0

    :cond_1d
    const/4 p0, 0x1

    .line 213
    :try_start_1e
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    return-object v2

    :catch_22
    :cond_22
    :goto_22
    return-object v0
.end method

.method static findFieldObjRecur(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 221
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_12

    .line 223
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 227
    :catch_d
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findFieldRecur(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findFieldObjRecur(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 237
    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_10

    .line 89
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v3, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    goto :goto_11

    :cond_10
    move-object v3, v0

    :goto_11
    if-nez v3, :cond_26

    .line 91
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 92
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-lt v1, v2, :cond_26

    .line 94
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_26} :catch_28
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    :cond_26
    return-object v3

    :catchall_27
    return-object v0

    .line 99
    :catch_28
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_47

    .line 59
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_47

    :cond_7
    const/4 v1, 0x0

    move-object v2, v0

    .line 63
    :goto_9
    array-length v3, p0

    if-ge v1, v3, :cond_46

    .line 65
    :try_start_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_1c

    .line 66
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    aget-object v5, p0, v1

    invoke-virtual {v2, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    :cond_1c
    if-nez v2, :cond_40

    .line 68
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    aget-object v6, p0, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 69
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-lt v3, v4, :cond_40

    .line 71
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_38

    goto :goto_40

    .line 76
    :catchall_38
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    :cond_40
    :goto_40
    if-eqz v2, :cond_43

    goto :goto_46

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_46
    :goto_46
    return-object v2

    :cond_47
    :goto_47
    return-object v0
.end method

.method static varargs getDeclaredRecur(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 173
    :cond_0
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_10

    .line 175
    :try_start_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_b

    if-eqz v0, :cond_0

    return-object v0

    .line 180
    :catch_b
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    .line 108
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_46

    :cond_7
    const/4 v1, 0x0

    .line 113
    array-length v2, p1

    move-object v3, v1

    const/4 v1, 0x0

    :goto_b
    if-ge v0, v2, :cond_45

    aget-object v4, p1, v0

    .line 115
    :try_start_f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_1e

    .line 116
    sget-object v7, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v7, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    move-object v3, v7

    :cond_1e
    if-nez v3, :cond_33

    .line 118
    sget-object v7, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 119
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-lt v5, v6, :cond_33

    .line 121
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    if-eqz v3, :cond_3f

    .line 125
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_3a

    goto :goto_3f

    .line 128
    :catchall_3a
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    if-eqz v1, :cond_42

    goto :goto_45

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_45
    :goto_45
    return v1

    :cond_46
    :goto_46
    return v0
.end method
