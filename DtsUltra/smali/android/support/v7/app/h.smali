.class final Landroid/support/v7/app/h;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/reflect/Field;

.field static b:Z

.field static c:Ljava/lang/reflect/Field;

.field static d:Z

.field private static e:Ljava/lang/Class;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z


# direct methods
.method static a(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Landroid/support/v7/app/h;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/h;->e:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v3, Landroid/support/v7/app/h;->f:Z

    :cond_0
    sget-object v0, Landroid/support/v7/app/h;->e:Ljava/lang/Class;

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ResourcesFlusher"

    const-string v2, "Could not find ThemedResourceCache class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    sget-boolean v0, Landroid/support/v7/app/h;->h:Z

    if-nez v0, :cond_3

    :try_start_1
    sget-object v0, Landroid/support/v7/app/h;->e:Ljava/lang/Class;

    const-string v1, "mUnthemedEntries"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/h;->g:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sput-boolean v3, Landroid/support/v7/app/h;->h:Z

    :cond_3
    sget-object v0, Landroid/support/v7/app/h;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_2
    sget-object v0, Landroid/support/v7/app/h;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ResourcesFlusher"

    const-string v2, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_3
.end method
